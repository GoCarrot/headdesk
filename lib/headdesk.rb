# frozen_string_literal: true

require 'headdesk/apktool'
require 'headdesk/version'
require 'headdesk/versions'
require 'headdesk/analyze'
require 'headdesk/apk'

#
# headdesk - Because we've all been there with Android.
#
module Headdesk
  FACEBOOK_SDK_VERSIONS_YAML = File.expand_path(File.join(
                                                  File.dirname(__FILE__),
                                                  'headdesk',
                                                  'data',
                                                  'facebook_sdk_versions.yaml'
                                                ))

  #
  # Error in CLI input
  #
  class CliError < StandardError
  end

  #
  # Helper for CLI command modules
  #
  module CliCommand
    extend Enumerable

    def self.each(&block)
      @commands.each(&block)
    end

    def self.included(cmd)
      @commands ||= []
      @commands << cmd
    end
  end
end
