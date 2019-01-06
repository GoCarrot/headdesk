# frozen_string_literal: true

module Headdesk
  module Checks
    module Teak
      #
      # Check to make sure that an APK, which uses Teak, has caching enabled.
      #
      class Caching
        include Checks::Teak::APK

        describe 'Check for io_teak_enable_caching'
        def call
          describe 'Teak SDK version is lower than 2.0.0'
          major, = apk.find_class('io.teak.sdk.Teak')
                      .field('SDKVersion')
                      .value
                      .to_version
          skip_check if: major.to_i >= 2

          describe "APK enables caching of Teak notification content (via 'io_teak_enable_caching')"
          fail_check unless: apk.resources
                                .values(v: 21)
                                .bool
                                .io_teak_enable_caching
        end
      end
    end
  end
end
