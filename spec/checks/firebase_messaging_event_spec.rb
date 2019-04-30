# frozen_string_literal: true

require_relative '../../lib/headdesk/check'

describe Headdesk::Checks::FirebaseMessagingEvent do
  describe '#process' do
    #
    # No services
    #
    apk.with application_manifest do
      it { should include status: :skip }
    end

    manifest_with_Firebase_only = application_manifest_adding <<-MANIFEST
      <service android:exported="false" android:name="com.google.firebase.messaging.FirebaseMessagingService">
        <intent-filter android:priority="-500">
          <action android:name="com.google.firebase.MESSAGING_EVENT"/>
        </intent-filter>
      </service>
    MANIFEST

    #
    # Default Firebase service
    #
    apk.with manifest_with_Firebase_only do
      it { should include status: :success }
    end

    manifest_with_Firebase_and_Teak = application_manifest_adding <<-MANIFEST
      <service android:exported="false" android:name="com.google.firebase.messaging.FirebaseMessagingService">
        <intent-filter android:priority="-500">
          <action android:name="com.google.firebase.MESSAGING_EVENT"/>
        </intent-filter>
      </service>

      <service android:name="io.teak.sdk.push.FCMPushProvider" android:stopWithTask="false">
        <intent-filter>
          <action android:name="com.google.firebase.MESSAGING_EVENT"/>
          <action android:name="com.google.firebase.INSTANCE_ID_EVENT"/>
        </intent-filter>
      </service>
    MANIFEST

    #
    # Default Firebase service and Teak
    #
    apk.with manifest_with_Firebase_and_Teak do
      it { should include status: :success }
    end

    manifest_with_Firebase_Teak_and_Leanplum = application_manifest_adding <<-MANIFEST
      <service android:exported="false" android:name="com.google.firebase.messaging.FirebaseMessagingService">
        <intent-filter android:priority="-500">
          <action android:name="com.google.firebase.MESSAGING_EVENT"/>
        </intent-filter>
      </service>

      <service android:name="io.teak.sdk.push.FCMPushProvider" android:stopWithTask="false">
        <intent-filter>
          <action android:name="com.google.firebase.MESSAGING_EVENT"/>
          <action android:name="com.google.firebase.INSTANCE_ID_EVENT"/>
        </intent-filter>
      </service>

      <service android:enabled="true" android:exported="false" android:name="com.leanplum.LeanplumPushFirebaseMessagingService">
        <intent-filter>
          <action android:name="com.google.firebase.MESSAGING_EVENT"/>
        </intent-filter>
      </service>
    MANIFEST

    #
    # Default Firebase service, Teak and Leanplum
    #
    apk.with manifest_with_Firebase_Teak_and_Leanplum do
      it { should include status: :fail }

      with_report_steps do
        it { should fail_with_description 'AndroidManifest.xml contains only one <service> with highest \'android:priority\' <intent-filter>' }
      end
    end
  end
end
