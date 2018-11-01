# frozen_string_literal: true

require 'nokogiri'
require 'yaml'

module Headdesk
  #
  # Representation of an APK file unpacked by apktool
  #
  class Apk
    def initialize(path)
      android_manifest_xml = File.join(path, 'AndroidManifest.xml').freeze
      apktool_yml = File.join(path, 'apktool.yml').freeze

      unless File.exist?(android_manifest_xml) && File.exist?(apktool_yml)
        throw ArgumentError.new('Path did not contain AndroidManifest.xml and/or apktool.yml')
      end

      @yaml = YAML.load_file(apktool_yml)
    end

    def analize
      puts @yaml.inspect
    end
  end
end
