# frozen_string_literal: true

module Headdesk
  module Checks
    #
    # Module for Teak checks
    #
    module Teak
      #
      # Module for Teak APK checks
      #
      module APK
        def self.included(klass)
          klass.include(Check::APK)
          klass.extend(Preconditions)
          klass.include(Utility)
        end

        #
        # Precondition tests for presence of Teak class SDK in APK
        #
        module Preconditions
          def preconditions?
            false unless apk.class?('io.teak.sdk.Teak')
          end
        end

        #
        # Utility methods for Teak based checks
        #
        module Utility
          def teak_sdk
            return @teak_sdk if @teak_sdk

            major, minor, revision = apk.find_class('io.teak.sdk.Teak')
                                        .field('SDKVersion')
                                        .value
                                        .to_version
            @teak_sdk = OpenStruct.new(
              version: "#{major}.#{minor}.#{revision}",
              major: major, minor: minor, revision: revision
            )

            @teak_sdk
          end
        end
      end
    end
  end
end

Dir[File.dirname(__FILE__) + '/teak/*.rb'].each { |file| require file }
