# receiver
Ensures that each `<receiver>` declared in the `AndroidManifest.xml` points to a Java class which is present in the APK.

## Will Fail If
* Any `<receiver>` points to a Java class that does not exist in the APK.

## Exports
The recievers present in `AndroidManifest.xml`

### Example
```json
{
  "receivers": [
    {
      "name": "com.amazon.device.iap.ResponseReceiver"
    },
    {
      "name": "io.teak.sdk.Teak"
    },
    {
      "name": "com.facebook.CurrentAccessTokenExpirationBroadcastReceiver"
    }
  ]
}
```

## Reason
Frequently, during app updates, build settings will change, or an SDK will be removed but the `<receiver>` inside of the `AndroidManifest.xml` will not get updated or removed. This causes the app to crash.

## Resolution
Remove the `<receiver>` blocks which are missing implementations, or add the libraries which provide the implementations.
