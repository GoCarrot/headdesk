# frozen_string_literal: true

require 'headdesk/apktool'
require 'headdesk/version'
require 'headdesk/analize'
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

  def self.icon_for_status(status)
    case status
    when :success
      '✔'
    when :fail
      '✘'
    else
      '⇣'
    end
  end

  def self.color_for_status(status)
    case status
    when :success
      :green
    when :fail
      :red
    else
      :cyan
    end
  end

  #
  # Error in CLI input
  #
  class CliError < StandardError
  end
end
