# teak/configuration
Ensures that the APK properly configures the Teak SDK.

## Will Skip If
* The Teak SDK is not present.

## Will Fail If
* `io_teak_app_id` is not specified.
* `io_teak_api_key` is not specified.
* `gcm_defaultSenderId` or `io_teak_gcm_sender_id` are not specified.
* `gcm_defaultSenderId` and `io_teak_gcm_sender_id` are specified, and set to different values.
* The version of the Teak SDK is greater or equal to 2.0.0 and...
    * `google_app_id` or `io_teak_firebase_app_id` are not specified.
    * `google_app_id` and `io_teak_firebase_app_id` are specified, and set to different values.

## Exports
The configuration values for the Teak SDK.

### Example
```json
{
  "teak_app_id": "1234567890123456",
  "teak_api_key": "abcdef1234567890abcdef1234567890",
  "gcm_sender_id": "123456789012"
}
```

## Reason
Teak requires your Teak App Id, Teak API Key, GCM sender id, and Firebase App Id in order to function.

## Resolution
**Adobe AIR:** [Set up Teak support at the Application level](https://teak.readthedocs.io/projects/air/en/latest/android.html#set-up-teak-support-at-the-application-level)

**Unity:** Use the `Edit/Teak` menu item to configure Teak inside Unity, or [Edit res/values/teak.xml](https://teak.readthedocs.io/projects/unity/en/latest/android.html#edit-res-values-teak-xml).
