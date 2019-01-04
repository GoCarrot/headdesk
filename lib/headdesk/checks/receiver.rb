# frozen_string_literal: true

module Headdesk
  #
  # Make sure all <reciever> blocks in AndroidManifest.xml point to a Java class
  # that exists in the APK.
  #
  class Receiver
    include Check::APK

    describe 'All <receiver> blocks in AndroidManifest.xml point to valid Java classes'
    def call
      receivers = []
      apk.android_manifest.xpath('//receiver').each do |receiver|
        fail_check unless: -> { apk.class?(receiver.attributes['name'].to_s) }
        @klass = apk.find_class(receiver.attributes['name'].to_s)

        describe "#{receiver.attributes['name']} has onReceive method"
        fail_check unless: -> { @klass.method?('onReceive') }

        receivers << {
          name: receiver.attributes['name'].to_s
        }
      end
      export receivers: receivers
    end
  end
end
