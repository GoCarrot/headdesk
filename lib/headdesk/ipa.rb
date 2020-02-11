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
    attr_reader :info_plist

    def initialize(path)
      @path = path

      was_unpacked_by_apktool = File.exist?(File.join(@path, 'apktool.yml'))
      @path = File.join(@path, 'unknown') if was_unpacked_by_apktool
      @path = Dir[File.join(@path, 'Payload','*.app')].first

      info_plist_path = File.join(@path, 'Info.plist').freeze

      throw CliError.new('Path did not contain Info.plist') unless File.exist?(info_plist_path)

      @info_plist = Plist.parse_xml(info_plist_path)
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
