# frozen_string_literal: true

require 'nokogiri'
require 'yaml'

require 'headdesk/apk/class'
require 'headdesk/apk/resources'
require 'headdesk/check'
require 'headdesk/report'

module Headdesk
  #
  # Representation of an APK file unpacked by apktool
  #
  # :reek:TooManyInstanceVariables
  class Apk
    attr_reader :yaml, :sdk_info, :android_manifest, :resources

    # :reek:TooManyStatements
    def initialize(path, manifest_contents = nil, yaml_contents = nil)
      @path = path

      android_manifest_xml = File.join(@path, 'AndroidManifest.xml').freeze
      apktool_yml = File.join(@path, 'apktool.yml').freeze

      throw CliError.new('Path did not contain AndroidManifest.xml') unless File.exist?(android_manifest_xml) || manifest_contents
      throw CliError.new('Path did not contain apktool.yml') unless File.exist?(apktool_yml) || yaml_contents

      @yaml = yaml_contents || YAML.load_file(apktool_yml)
      @sdk_info = @yaml['sdkInfo']
      @resources = Resources.new(@path)

      manifest = Nokogiri::XML(manifest_contents) if manifest_contents
      manifest ||= File.open(android_manifest_xml) do |file|
        Nokogiri::XML(file)
      end

      @android_manifest = manifest.xpath('manifest')
      throw CliError.new('Invalid Android manifest') if @android_manifest.empty?
      @android_manifest = @android_manifest.first
    end

    def analyze
      report = Headdesk::APKReport.new(self)

      Headdesk::Check.for_apk.each do |check_type|
        check = check_type.new(self)
        report << check.process
      end

      # TODO: Associated domains
      report
    end

    def unity_version
      unity_assets = File.join(@path, 'assets', 'bin', 'Data').freeze
      return nil unless Dir.exist?(unity_assets)

      asset_file = Dir[File.join(unity_assets, '/*')].first
      return nil unless asset_file

      version_bytes = []
      File.open(asset_file, 'rb') do |file|
        file.read(16) # Throw the first 16 bytes away
        file.read(16).each_byte do |byte|
          version_bytes << byte if byte > 0
        end
        return version_bytes.pack('c*')
      end
    end

    def target_sdk_version
      sdk_info['targetSdkVersion'].to_i
    end

    def min_sdk_version
      sdk_info['minSdkVersion'].to_i
    end

    def targets_sdk(gt_eq)
      target_sdk_version >= gt_eq
    end

    def min_sdk(gt_eq)
      min_sdk_version >= gt_eq
    end

    # :reek:NilCheck
    def class?(decl)
      !find_class(decl).nil?
    end

    def find_class(decl)
      file_name = Dir["#{@path}/smali*/**/#{Class.path_for(decl)}.smali"].first
      return nil unless file_name && File.exist?(file_name)

      Class.new(file_name)
    end
  end
end
