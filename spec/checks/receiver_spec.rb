# frozen_string_literal: true

require_relative '../../lib/headdesk/check'

describe Headdesk::Checks::Receiver do
  describe '#process' do
    #
    # No receivers
    #
    apk.with application_manifest do
      it {  should include status: :success }
    end

    manifest_with_Upsight_receiver = application_manifest_adding <<-MANIFEST
      <receiver android:name="com.upsight.android.googlepushservices.internal.PushBroadcastReceiver"
                android:permission="com.google.android.c2dm.permission.SEND">
      </receiver>
    MANIFEST

    #
    # One receiver, but the class does not exist in the APK
    #
    apk.with manifest_with_Upsight_receiver do
      it { should include status: :fail }

      with_report_steps do
        it { should fail_with_description 'APK contains class com.upsight.android.googlepushservices.internal.PushBroadcastReceiver' }
      end
    end

    #
    # One receiver that does exist
    #
    apk.with(:Upsight).and manifest_with_Upsight_receiver do
      it { should include status: :success }

      with_report_steps do
        it { should succeed_with_description 'APK contains class com.upsight.android.googlepushservices.internal.PushBroadcastReceiver' }
      end
    end

    manifest_with_Upsight_and_Teak_receiver = application_manifest_adding <<-MANIFEST
      <receiver android:name="com.upsight.android.googlepushservices.internal.PushBroadcastReceiver"
                android:permission="com.google.android.c2dm.permission.SEND">
      </receiver>

      <receiver android:exported="false"
                android:name="io.teak.sdk.Teak">
      </receiver>
    MANIFEST

    #
    # Two receivers, but one doesn't exist
    #
    apk.with(:Upsight).and manifest_with_Upsight_and_Teak_receiver do
      it { should include status: :fail }

      with_report_steps do
        it { should succeed_with_description 'APK contains class com.upsight.android.googlepushservices.internal.PushBroadcastReceiver' }
        it { should fail_with_description 'APK contains class io.teak.sdk.Teak' }
      end
    end

    #
    # Two receivers, both exist
    #
    apk.with(sdks: %i[upsight teak], manifest: manifest_with_Upsight_and_Teak_receiver) do
      it { should include status: :success }

      with_report_steps do
        it { should succeed_with_description 'APK contains class com.upsight.android.googlepushservices.internal.PushBroadcastReceiver' }
        it { should succeed_with_description 'APK contains class io.teak.sdk.Teak' }
      end
    end
  end
end
