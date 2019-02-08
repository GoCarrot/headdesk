# activity_alias
Ensures that each `<activity-alias>` declared in the `AndroidManifest.xml` is valid.

## Will Skip If
* `AndroidManifest.xml` does not contain any `<activity-alias>` nodes.

## Will Fail If
* An `<activity-alias>` has a `targetActivity` which does not exist in the `AndroidManifest.xml`.
* An `<activity-alias>` does not contain an `<intent-filter>` or...
    * An `<intent-filter>` does not include `<action android:name="android.intent.action.MAIN" />`.
    * An `<intent-filter>` does not include `<category android:name="android.intent.category.LAUNCHER" />`.

## Exports
The `<activity-alias>` nodes present.

### Example
```json
{  
  "aliases":[
    {
      "name":"com.unity3d.player.UnityPlayerActivity",
      "targetActivity":"io.teak.sdk.wrapper.unity.TeakUnityPlayerActivity"
    }
  ]
}
```

## Reason
When an app changes the class of its main `<activity>` any shortcut that the app, or the user, has created will be removed.

To avoid this, apps can use `<activity-alias>` to redirect any reference to the old activity to a new activity.

An `<activity-alias>` must point to a valid `<activity>` and must include intent filters which will redirect the `android.intent.action.MAIN` action and `android.intent.category.LAUNCHER` category, otherwise shortcuts will not be preserved.

## Resolution
Make sure your `<activity-alias>` has a `targetActivity` which points to an `<activity>` defined in `AndroidManifest.xml`
```xml
<activity-alias
    android:name="your.old.activity.name"
    android:targetActivity="your.new.activity.name" >
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.LAUNCHER" />
    </intent-filter>
</activity-alias>
```
