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
    def initialize(path)
      @path = path

      android_manifest_xml = File.join(@path, 'AndroidManifest.xml').freeze
      apktool_yml = File.join(@path, 'apktool.yml').freeze

      throw CliError.new('Path did not contain AndroidManifest.xml and/or apktool.yml') unless File.exist?(android_manifest_xml) && File.exist?(apktool_yml)

      @yaml = YAML.load_file(apktool_yml)
      @sdk_info = @yaml['sdkInfo']
      @resources = Resources.new(@path)

      @android_manifest = File.open(android_manifest_xml) do |file|
        Nokogiri::XML(file)
      end
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
