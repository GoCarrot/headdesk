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
          klass.extend(ClassMethods)
          klass.include(InstanceMethods)
        end

        #
        # Class methods for Teak based checks
        #
        module ClassMethods
          def check_name(cname = nil)
            cname = "teak/#{cname}" if cname
            super(cname)
          end
        end

        #
        # Instance methods for Teak based checks
        #
        module InstanceMethods
          def preconditions?
            begin
              major, minor, revision = apk.find_class('io.teak.sdk.Teak')
                                          .field('SDKVersion')
                                          .value
                                          .to_version
              @teak_sdk = OpenStruct.new(
                version: "#{major}.#{minor}.#{revision}",
                major: major, minor: minor, revision: revision
              )
            rescue NoMethodError => _e
              return false
            end
            true
          end

          def teak_sdk
            @teak_sdk
          end
        end
      end
    end
  end
end

Dir[File.dirname(__FILE__) + '/teak/*.rb'].each { |file| require file }
