# frozen_string_literal: true

module Headdesk
  module Teak
    #
    # Check to make sure that an APK, which uses Teak, has caching enabled.
    #
    class Caching
      include Check::APK

      describe 'Check for io_teak_enable_caching'
      def call
        skip_check unless: -> { @apk.class?('io.teak.sdk.Teak') }

        describe "APK enables caching of Teak notification content (via 'io_teak_enable_caching')"
        fail_check unless: @apk.resources
                               .values(v: 21)
                               .bool
                               .io_teak_enable_caching
      end
    end
  end
end
