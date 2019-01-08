# Headdesk

Because we've all been there with Android.

`headdesk` automatically detects common issues with Android APKs. These are errors that we (at Teak) commonly see in customer support. It's like unit testing for your build system.

This is output from the check that ensures that the version of the Facebook SDK (if present) has not been deprecated:

      ✔ Facebook SDK version
          ↳ ✔ APK contains class com.facebook.FacebookSdk
          ↳ ✔ com.facebook.FacebookSdk contains getSdkVersion method
          ↳ ✔ Found Facebook SDK version 4.33.0
          ↳ ✔ Facebook SDK was released in the last 2 years (using 4.33.0, released 2018-05-01)
          💾 {"facebook_sdk":{"major":4,"minor":33,"patch":0,"version":"4.33.0","date":"2018-05-01"}}

`headdesk` can also output to JSON.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'headdesk'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install headdesk

## Usage

Command line usage instruction:

    $ headdesk

    $ headdesk help [COMMAND]

Analize an APK

    $ headdesk analize [APK]

This will unpack the APK to a temporary path, analize and print to STDOUT the results in plaintext. For JSON output pass `--json`.

    $ headdesk analize --path [path to unpacked APK]

This will analize an already unpacked APK.

Unpack an APK

    $ headdesk unpack APK [DESTINATION]

This will unpack an APK to the specified DESTINATION, or to the current working directory.

    $ headdesk unpack APK [DESTINATION] --analize

This will unpack an APK to the specified DESTINATION, or to the current working directory, and then perform analysis.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gocarrot/headdesk.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
