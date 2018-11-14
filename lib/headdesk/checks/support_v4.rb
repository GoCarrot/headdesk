# frozen_string_literal: true

module Headdesk
  #
  # Check the version of support-v4
  #
  class Support_v4
    include Check::APK

    describe 'support-v4 is 26.1+ if targetSdkVersion >= 26'
    def call
      describe 'targetSdkVersion >= 26'
      skip_check_unless @apk.sdk_info['targetSdkVersion'].to_i >= 26

      describe 'APK contains android.support.v4.app.NotificationCompat$Builder'
      notification_compat_builder = @apk.find_class('android/support/v4/app/NotificationCompat$Builder')
      skip_check_if notification_compat_builder.nil?

      describe 'android.support.v4.app.NotificationCompat$Builder contains setChannelId method'
      fail_check_unless notification_compat_builder.method?('setChannelId')
    end
  end
end
