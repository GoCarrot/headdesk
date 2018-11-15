# frozen_string_literal: true

module Headdesk
  module Teak
    #
    # Check to make sure that an APK, which uses Teak, has an API 21+ icon.
    #
    class Api21Icon
      include Check::APK

      describe 'Check for API 21+ Teak icons'
      def call
        skip_check unless: -> { @apk.class?('io.teak.sdk.Teak') }
        skip_check if: -> { @apk.min_sdk 21 }

        describe "APK contains a drawable for 'io_teak_small_notification_icon'"
        fail_check if: @apk.resources.values(v: 21)
                           .drawable.io_teak_small_notification_icon.nil?

        describe "'io_teak_small_notification_icon' for v21 is different from < v21"
        fail_check unless: @apk.resources.values(v: 21)
                               .drawable.io_teak_small_notification_icon !=
                           @apk.resources.values(v: 20)
                               .drawable.io_teak_small_notification_icon
      end
    end
  end
end
