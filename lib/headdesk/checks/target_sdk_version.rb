# frozen_string_literal: true

module Headdesk
  module Checks
    #
    # APKs should all target API 26+
    #
    # :reek:UncommunicativeModuleName
    class TargetSdkVersion
      include Check::APK

      check_name 'target_sdk_version'
      describe 'targetSdkVersion must be at least 28'
      def call
        fail_check unless: -> { apk.targets_sdk 28 }
      end
    end
  end
end
