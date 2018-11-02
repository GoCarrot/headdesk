# frozen_string_literal: true

module Headdesk
  #
  # Check the version of support-v4
  #
  class Support_v4
    include Check::APK

    describe 'Check the version of support-v4'
    def call
      describe 'targetSdkVersion >= 26'
      skip_check unless @apk.sdk_info['targetSdkVersion'].to_i >= 26

      describe 'APK contains android.support.v4.app.NotificationCompat$Builder'
      notification_compat_builder = @apk.find_class('android/support/v4/app/NotificationCompat$Builder')
      skip_check if notification_compat_builder.nil?

      describe 'support-v4 library must be 26.1 or higher'
      fail_check unless notification_compat_builder.method?('setChannelId')
    end
  end
end
