# frozen_string_literal: true

require 'plist'

require 'headdesk/apk/class'
require 'headdesk/apk/resources'
require 'headdesk/check'
require 'headdesk/report'

module Headdesk
  #
  # Representation of an unzipped IPA file
  #
  class Ipa
    attr_reader :info_plist, :url_schemes, :entitlements

    Entitlements = Struct.new(:application_identifier, :aps_environment, :associated_domains, :team_identifier, :get_task_allow)

    def initialize(path)
      @path = path

      apktool_yml = File.join(@path, 'apktool.yml').freeze
      was_unpacked_by_apktool = File.exist?(apktool_yml)

      @path = File.join(@path, 'unknown') if was_unpacked_by_apktool
      @path = Dir[File.join(@path, 'Payload','*.app')].first

      throw CliError.new('Path did not contain Info.plist') unless @path && Dir.exist?(@path)

      info_plist_path = File.join(@path, 'Info.plist').freeze

      throw CliError.new('Path did not contain Info.plist') unless File.exist?(info_plist_path)

      @info_plist = Plist.parse_xml(info_plist_path)

      @url_schemes = []
      @info_plist['CFBundleURLTypes'].each do |url_type|
        url_type['CFBundleURLSchemes'].each do |url_scheme|
          @url_schemes << url_scheme
        end
      end

      entitlements = Plist.parse_xml(`codesign -d --entitlements :- #{@path}`)
      @entitlements = Entitlements.new(
        entitlements['application-identifier'],
        entitlements['aps-environment'],
        entitlements['com.apple.developer.associated-domains'],
        entitlements['com.apple.developer.team-identifier'],
        entitlements['get-task-allow']
      )
    end

    def analyze
      report = Headdesk::IPAReport.new(self)

      Headdesk::Check.for_ipa.each do |check_type|
        check = check_type.new(self)
        report << check.process
      end

      # TODO: Associated domains
      report
    end
  end
end
