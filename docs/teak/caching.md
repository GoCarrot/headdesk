# teak/caching
Ensures that the APK contains a notification icon for both Android 5+ (API 21+) as well as pre-Android 5, and that these are different icons.

## Will Skip If
* The Teak SDK is not present.
* The version of the Teak SDK is greater or equal to 2.0.0.

## Will Fail If
* `io_teak_enable_caching` is not specified.
* `io_teak_enable_caching` is not set to `true`.

## Exports
None.

## Reason
The Teak SDK uses [Android HTTP Caching](https://developer.android.com/training/efficient-downloads/redundant_redundant#ResponseCache) to prevent downloading redundant Notification assets.

The `io_teak_enable_caching` setting allows you to disable this behavior, however it should be enabled unless your app, or an SDK that you use, makes uncommon assumptions.
