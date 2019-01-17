# frozen_string_literal: true

require 'oily_png'

module Headdesk
  module Checks
    module Teak
      #
      # Check to make sure that an APK, which uses Teak, has an API 21+ icon.
      #
      class Api21Icon
        include Checks::Teak::APK

        check_name 'api21_icon'
        describe 'Check for API 21+ Teak icons'
        # :reek:UncommunicativeVariableName { accept: ['icon_v21'] }
        def call
          skip_check if: -> { apk.min_sdk 21 }

          icon = apk.resources
                    .values(v: 20)
                    .drawable.io_teak_small_notification_icon
          icon_v21 = apk.resources
                        .values(v: 21)
                        .drawable.io_teak_small_notification_icon
          export icon: icon, icon_v21: icon_v21

          describe "APK contains a drawable for 'io_teak_small_notification_icon'"
          fail_check if: -> { icon.nil? || icon_v21.nil? }

          describe "'io_teak_small_notification_icon' for v21 is different from < v21"
          fail_check unless: -> { icon != icon_v21 }

          resolutions = [['drawable-mdpi', 24], ['drawable-hdpi', 36], ['drawable-xhdpi', 48],
                         ['drawable-xxhdpi', 72], ['drawable-xxxhdpi', 96]]
          resolutions.each do |rname, size|
            resource_file = icon_v21.sub('@drawable', "res/#{rname}") + '.png'
            fail_check unless: -> { apk.resources.file?(resource_file) }

            describe "'#{resource_file}' is #{size}x#{size}"
            image = ChunkyPNG::Image.from_file(apk.resources.path_for(resource_file))
            fail_check unless: -> { size == image.width && size == image.height }
          end
        end
      end
    end
  end
end
