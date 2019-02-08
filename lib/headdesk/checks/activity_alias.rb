# frozen_string_literal: true

module Headdesk
  module Checks
    #
    # An <activity-alias> is most commonly used to change the class of the MAIN
    # activity, while preserving shortcuts.
    #
    # <intent-filter> must include both:
    #   <action android:name="android.intent.action.MAIN" />
    #   <category android:name="android.intent.category.LAUNCHER" />
    #
    # and must point to an <activity> that has been defined
    #
    class ActivityAlias
      include Check::APK

      check_name 'activity_alias'
      describe "<activity-alias> is used to preserve app shortcuts"
      def call
        describe 'AndroidManifest.xml contains one or more <activity-alias>'
        skip_check if: apk.android_manifest.xpath('application/activity-alias').empty?

        aliases = []
        apk.android_manifest.xpath('application/activity-alias').each do |activity_alias|
          describe "AndroidManifest.xml contains <activity> '#{activity_alias.attributes['targetActivity']}'"
          fail_check if: apk.android_manifest.xpath("application/activity[@android:name='#{activity_alias.attributes['targetActivity']}']").empty?

          describe "<activity-alias> '#{activity_alias.attributes['name']}' -> '#{activity_alias.attributes['targetActivity']}' has '<intent-filter>'"
          fail_check if: activity_alias.xpath("intent-filter").empty?

          describe "<intent-filter> contains '<action android:name=\"android.intent.action.MAIN\" />'"
          fail_check if: activity_alias.xpath("intent-filter/action[@android:name='android.intent.action.MAIN']").empty?

          describe "<intent-filter> contains '<category android:name=\"android.intent.category.LAUNCHER\" />'"
          fail_check if: activity_alias.xpath("intent-filter/category[@android:name='android.intent.category.LAUNCHER']").empty?

          aliases << {
            name: activity_alias.attributes['name'],
            targetActivity: activity_alias.attributes['targetActivity']
          }
        end
        export aliases: aliases
      end
    end
  end
end
