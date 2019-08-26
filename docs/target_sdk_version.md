# target_sdk_version
Ensures that the APK is built with `targetSdkVersion` at least 28.

## Will Fail If
* `targetSdkVersion` is less than 28.

## Exports
None.

## Reason
As of November 1, 2019 Google Play requires that all apps, and app updates, target Android 9 (API 28).

## Resolution
Target API 28 or higher.
