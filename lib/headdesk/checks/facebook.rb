# frozen_string_literal: true

module Headdesk
  #
  # Check the version of the Facebook SDK
  #
  # Facebook deprecates SDKs 2 years after they are released.
  #
  class FacebookSDK
    include Check::APK

    describe 'Check the version of the Facebook SDK'
    def call
      describe 'APK contains com.facebook.FacebookSdk'
      facebook_sdk = @apk.find_class('com/facebook/FacebookSdk')
      skip_check if facebook_sdk.nil?


      # TODO: Parse https://developers.facebook.com/docs/android/change-log-4x
      #       and fail if > 2 years old, warn if < 3 months remaining
      get_sdk_version = facebook_sdk.method('getSdkVersion')[0]
      fail_check if get_sdk_version.nil?
      major, minor, patch = get_sdk_version.match(/const-string v0, "(\d+)\.(\d+)\.(\d+)"/).captures
      describe "Facebook SDK must be at least 4.19.0 (version is #{major}.#{minor}.#{patch})"
      fail_check unless major.to_i >= 4 && minor.to_i >= 19
    end
  end
end
