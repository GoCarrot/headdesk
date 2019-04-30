# firebase_messaging_event
Ensures that there is only one `<service>` with `<intent-filter` for `com.google.firebase.MESSAGING_EVENT` declared in the `AndroidManifest.xml` 

## Will Fail If
* More than one `<service>` has an `<intent-filter>` for `com.google.firebase.MESSAGING_EVENT` without specifying an `android:priority`

## Exports
The services which have an `<intent-filter>` for `com.google.firebase.MESSAGING_EVENT` present in `AndroidManifest.xml`

### Example
```json
{
  "filters":[
    {
      "name":"com.google.firebase.messaging.FirebaseMessagingService",
      "priority":-500
    },
    {
      "name":"com.leanplum.LeanplumPushFirebaseMessagingService",
      "priority":0
    },
    {
      "name":"io.teak.sdk.push.FCMPushProvider",
      "priority":0
    }
  ]
}
```

## Reason
If multiple listeners for `com.google.firebase.MESSAGING_EVENT` exist, only the highest priority `<service>` will receive the message. This can cause unexpected behavior.

## Resolution
Remove the `<service>` blocks which have `<intent-filter>` for `com.google.firebase.MESSAGING_EVENT`, or add `android:priority` to the `<intent-filter>` to manually specify which `<service>` will process the message.

For example, this gets inserted by Firebase automatically, and sets its priority to `-500`:
```xml
<service android:exported="false" android:name="com.google.firebase.messaging.FirebaseMessagingService">
  <intent-filter android:priority="-500">
    <action android:name="com.google.firebase.MESSAGING_EVENT"/>
  </intent-filter>
</service>
```
