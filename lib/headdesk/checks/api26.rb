# frozen_string_literal: true

module Headdesk
  #
  # APKs should all target API 26+
  #
  class Api26
    include Check::APK

    describe 'targetSdkVersion must be at least 26'
    def call
      export targetSdkVersion: @apk.target_sdk_version

      fail_check unless: -> { @apk.targets_sdk 26 }

      klass_def = 'android/support/v4/app/NotificationCompat$Builder'
      skip_check unless: -> { @apk.class?(klass_def) }
      klass = @apk.find_class(klass_def)

      describe 'support-v4 version is 26.1+'
      fail_check unless: -> { klass.method?('setChannelId') }

      # TODO: AndroidX/JetPack
    end
  end
end
