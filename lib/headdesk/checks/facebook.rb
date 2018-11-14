# frozen_string_literal: true

module Headdesk
  #
  # Check the version of the Facebook SDK
  #
  # Facebook deprecates SDKs 2 years after they are released.
  #
  class FacebookSDK
    include Check::APK

    describe 'Facebook SDK version'
    def call
      describe 'APK contains com.facebook.FacebookSdk'
      facebook_sdk = @apk.find_class('com/facebook/FacebookSdk')
      skip_check if facebook_sdk.nil?

      # TODO: Parse https://developers.facebook.com/docs/android/change-log-4x
      #       and fail if > 2 years old, warn if < 3 months remaining
      get_sdk_version = facebook_sdk.method('getSdkVersion')[0]
      fail_check if get_sdk_version.nil?

      facebook_sdks = YAML.load_file(Headdesk::FACEBOOK_SDK_VERSIONS_YAML)
      major, minor, patch = get_sdk_version.match(/const-string v0, "(\d+)\.(\d+)\.(\d+)"/).captures

      sdk_in_use = (facebook_sdks.select do |sdk|
        sdk['major'] == major.to_i || 0 &&
        sdk['minor'] == minor.to_i || 0 &&
        sdk['patch'] == patch.to_i || 0
      end).first

      describe "Could not find Facebook SDK version which is in use (#{major}.#{minor}.#{patch})"
      fail_check if sdk_in_use.nil?

      describe "Facebook SDK should have been released in the last 2 years (using #{major}.#{minor}.#{patch}, released #{sdk_in_use[:date]})"
      fail_check unless sdk_in_use[:date] < (Date.today - (365 * 2))
    end
  end
end
