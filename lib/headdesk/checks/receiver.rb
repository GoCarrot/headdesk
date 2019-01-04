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
        receiver_name = receiver.attributes['name'].to_s
        fail_check unless: -> { apk.class?(receiver_name) }
        @klass = apk.find_class(receiver_name)

        describe "#{receiver_name} has onReceive method"
        fail_check unless: -> { @klass.method?('onReceive') }

        receivers << {
          name: receiver_name
        }
      end
      export receivers: receivers
    end
  end
end
