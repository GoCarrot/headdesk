# frozen_string_literal: true

module Headdesk
  module Checks
    #
    # An <activity-alias> is most commonly used to change the class of the MAIN
    # activity, while preserving shortcuts.
    #
    # com.google.firebase.MESSAGING_EVENT
    #
    class FirebaseMessagingEvent
      include Check::APK

      check_name 'firebase_messaging_event'
      describe '<intent-filter> for \'com.google.firebase.MESSAGING_EVENT\''
      def call
        intent_filters = apk.android_manifest.xpath("application/service/intent-filter/action[@android:name='com.google.firebase.MESSAGING_EVENT']")
        describe 'AndroidManifest.xml contains one or more <service> with <intent-filter> for \'com.google.firebase.MESSAGING_EVENT\''
        skip_check if: intent_filters.empty?

        filters = []
        intent_filters.each do |filter|
          filters << {
            name: filter.parent.parent.attributes['name'].to_s,
            priority: filter.parent.attributes['priority'].to_s.to_i
          }
        end
        export filters: filters

        max_priority = filters.max_by { |elem| elem[:priority].to_i }[:priority]
        describe 'AndroidManifest.xml contains only one <service> with highest \'android:priority\' <intent-filter>'
        fail_check if: filters.select { |elem| elem[:priority] == max_priority }.size > 1
      end
    end
  end
end
