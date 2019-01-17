# facebook
Ensure that the version of the Facebook SDK in use has been released in the last two years.

## Will Skip If
* The APK does not include the Facebook SDK (`com.facebook.FacebookSdk` class is not present).

## Will Fail If
* The Facebook SDK version was not released in the last two years.

## Exports
The version information of the included Facebook SDK.

### Example
```json
{
  "facebook_sdk": {
    "major": 4,
    "minor": 33,
    "patch": 0,
    "version": "4.33.0",
    "date": "2018-05-01"
  }
}
```

## Reason
Facebook deprecates their SDKs two years after release.

> Core APIs and SDKs are central to the Facebook Platform offered to developers. These elements are subject to a version system, and guarantee that anything considered a core API node, field, edge, dialog, SDK or SDK method will remain available and unchanged for at least two years from the launch of that version.
Source: https://developers.facebook.com/docs/apps/versions/

## Resolution
Update the version of the Facebook SDK that your game uses.
