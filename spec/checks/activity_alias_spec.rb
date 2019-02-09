# frozen_string_literal: true

require_relative '../../lib/headdesk/check'

describe Headdesk::Checks::ActivityAlias do
  describe '#process' do
    #
    # No <activity-alias>
    #
    apk.with application_manifest do
      it { should include status: :skip }
    end

    manifest_with_missing_activity = application_manifest_adding <<-MANIFEST
      <activity-alias
          android:name="com.unity3d.player.UnityPlayerActivity"
          android:targetActivity="io.teak.sdk.wrapper.unity.TeakUnityPlayerActivity" >
      </activity-alias>
    MANIFEST

    #
    # <activity-alias> with missing <activity>
    #
    apk.with manifest_with_missing_activity do
      it { should include status: :fail }

      with_report_steps do
        it { should fail_with_description "AndroidManifest.xml contains <activity> 'io.teak.sdk.wrapper.unity.TeakUnityPlayerActivity'" }
      end
    end

    manifest_without_intent_filter = application_manifest_adding <<-MANIFEST
      <activity android:name="io.teak.sdk.wrapper.unity.TeakUnityPlayerActivity"/>
      <activity-alias
          android:name="com.unity3d.player.UnityPlayerActivity"
          android:targetActivity="io.teak.sdk.wrapper.unity.TeakUnityPlayerActivity" >
      </activity-alias>
    MANIFEST

    #
    # <activity-alias> with missing <intent-filter>
    #
    apk.with manifest_without_intent_filter do
      it { should include status: :fail }

      with_report_steps do
        it { should fail_with_description "has '<intent-filter>'" }
      end
    end

    manifest_without_action_main = application_manifest_adding <<-MANIFEST
      <activity android:name="io.teak.sdk.wrapper.unity.TeakUnityPlayerActivity"/>
      <activity-alias
          android:name="com.unity3d.player.UnityPlayerActivity"
          android:targetActivity="io.teak.sdk.wrapper.unity.TeakUnityPlayerActivity" >
          <intent-filter>
            <category android:name="android.intent.category.LAUNCHER" />
          </intent-filter>
      </activity-alias>
    MANIFEST

    #
    # <intent-filter> without <action android:name="android.intent.action.MAIN" />
    #
    apk.with manifest_without_action_main do
      it { should include status: :fail }

      with_report_steps do
        it { should fail_with_description '<action android:name="android.intent.action.MAIN" />' }
      end
    end

    manifest_without_category_launcher = application_manifest_adding <<-MANIFEST
      <activity android:name="io.teak.sdk.wrapper.unity.TeakUnityPlayerActivity"/>
      <activity-alias
          android:name="com.unity3d.player.UnityPlayerActivity"
          android:targetActivity="io.teak.sdk.wrapper.unity.TeakUnityPlayerActivity" >
          <intent-filter>
            <action android:name="android.intent.action.MAIN" />
          </intent-filter>
      </activity-alias>
    MANIFEST

    #
    # <intent-filter> without <category android:name="android.intent.category.LAUNCHER" />
    #
    apk.with manifest_without_category_launcher do
      it { should include status: :fail }

      with_report_steps do
        it { should fail_with_description '<category android:name="android.intent.category.LAUNCHER" />' }
      end
    end

    correct_manifest = application_manifest_adding <<-MANIFEST
      <activity android:name="io.teak.sdk.wrapper.unity.TeakUnityPlayerActivity"/>
      <activity-alias
          android:name="com.unity3d.player.UnityPlayerActivity"
          android:targetActivity="io.teak.sdk.wrapper.unity.TeakUnityPlayerActivity" >
          <intent-filter>
              <action android:name="android.intent.action.MAIN" />
              <category android:name="android.intent.category.LAUNCHER" />
          </intent-filter>
      </activity-alias>
    MANIFEST

    #
    # Properly configured <activity-alias>
    #
    apk.with correct_manifest do
      it { should include status: :success }

      with_report_steps do
        it { should succeed_with_description "'com.unity3d.player.UnityPlayerActivity' -> 'io.teak.sdk.wrapper.unity.TeakUnityPlayerActivity'" }
      end
    end
  end
end
