# api26
Ensures that the APK is built with `targetSdkVersion` at least 26.

## Will Fail If
* `targetSdkVersion` is less than 26.

## Exports
None.

## Reason
As of November 1, 2018 Google Play requires that all apps, and app updates, target Android 8 (API 26).

> Google Play will require that new apps target at least Android 8.0 (API level 26) from August 1, 2018, and that app updates target Android 8.0 from November 1, 2018.
Source: https://developer.android.com/distribute/best-practices/develop/target-sdk

## Resolution
Target API 26 or higher.
