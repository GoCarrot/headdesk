# frozen_string_literal: true

require 'nokogiri'
require 'yaml'

require 'headdesk/apk/class'
require 'headdesk/check'

module Headdesk
  #
  # Representation of an APK file unpacked by apktool
  #
  class Apk
    attr_accessor :yaml, :sdk_info, :android_manifest
    def initialize(path)
      @path = path

      android_manifest_xml = File.join(@path, 'AndroidManifest.xml').freeze
      apktool_yml = File.join(@path, 'apktool.yml').freeze

      unless File.exist?(android_manifest_xml) && File.exist?(apktool_yml)
        throw ArgumentError.new('Path did not contain AndroidManifest.xml and/or apktool.yml')
      end

      @yaml = YAML.load_file(apktool_yml)
      @sdk_info = @yaml['sdkInfo']

      @android_manifest = File.open(android_manifest_xml) do |f|
        Nokogiri::XML(f)
      end
    end

    def analize
      report = {
        file_name: @yaml['apkFileName'],
        android_sdk: @sdk_info,
        checks: []
      }

      Headdesk::Check.for_apk.each do |check|
        c = check.call_on(self)
        report[:checks] << c.report
      end

      # TODO: Associated domains
      report
    end

    def find_class(decl)
      Class.new(File.join(@path, 'smali', "#{Class.path_for(decl)}.smali"))
    end
  end
end
