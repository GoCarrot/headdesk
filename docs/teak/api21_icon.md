# teak/api21_icon
Ensures that the APK contains a notification icon for both Android 5+ (API 21+) as well as pre-Android 5, and that these are different icons.

Also verifies following files have the specified image dimensions:
* drawable-mdpi/[icon_v21].png     24x24
* drawable-hdpi/[icon_v21].png     36x36
* drawable-xhdpi/[icon_v21].png    48x48
* drawable-xxhdpi/[icon_v21].png   72x72
* drawable-xxxhdpi/[icon_v21].png  96x96

## Will Skip If
* The Teak SDK is not present.

## Will Fail If
* There is no drawable resource for `io_teak_small_notification_icon`.
* There is no v21 drawable resource for `io_teak_small_notification_icon`
* The drawable resources point to the same image.
* The v21 drawable resources do not exist, or are the incorrect size
    * `drawable-mdpi/[icon_v21].png` does not exist, or is not 24x24
    * `drawable-hdpi/[icon_v21].png` does not exist, or is not 36x36
    * `drawable-xhdpi/[icon_v21].png` does not exist, or is not 48x48
    * `drawable-xxhdpi/[icon_v21].png` does not exist, or is not 72x72
    * `drawable-xxxhdpi/[icon_v21].png` does not exist, or is not 96x96

## Exports
The values for `io_teak_small_notification_icon` for less than v21, and v21+.

### Example
```json
{
  "icon": null,
  "icon_v21": "@drawable/icon_white"
}
```

## Reason
Android 5+ uses [Material Design](https://material.io/design/iconography/#notification) and needs a white and transparant icon for proper display of notification icons in the tray.

## Resolution
**Adobe AIR:** [Set Notification Icons for your Game](https://teak.readthedocs.io/projects/air/en/latest/android.html#set-notification-icons-for-your-game)

**Unity:** [Set Notification Icons for your Game](https://teak.readthedocs.io/projects/unity/en/latest/android.html#set-notification-icons-for-your-game)
