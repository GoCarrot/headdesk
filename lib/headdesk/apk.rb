# frozen_string_literal: true

require 'nokogiri'
require 'yaml'

require 'headdesk/apk/class'

module Headdesk
  #
  # Representation of an APK file unpacked by apktool
  #
  class Apk
    attr_accessor :yaml, :sdk_info
    def initialize(path)
      @path = path

      android_manifest_xml = File.join(@path, 'AndroidManifest.xml').freeze
      apktool_yml = File.join(@path, 'apktool.yml').freeze

      unless File.exist?(android_manifest_xml) && File.exist?(apktool_yml)
        throw ArgumentError.new('Path did not contain AndroidManifest.xml and/or apktool.yml')
      end

      @yaml = YAML.load_file(apktool_yml)
      @sdk_info = @yaml['sdkInfo']
    end

    def analize
      puts @sdk_info.inspect

      # If targetSdkVersion >= 26 check for 'setChannelId' in
      #    android/support/v4/app/NotificationCompat$Builder
      # it will only be present if the v4 support lib is 26.1+
      if @sdk_info['targetSdkVersion'].to_i > 25
        notification_compat_builder = find_class('android/support/v4/app/NotificationCompat$Builder')
        notification_compat_builder.method?('setChannelId')
      end

      puts 'foo'
    end

    def find_class(decl)
      Class.new(File.join(@path, 'smali', "#{Class.path_for(decl)}.smali"))
    end
  end
end
