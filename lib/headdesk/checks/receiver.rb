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
      @apk.android_manifest.xpath('//receiver').each do |receiver|
        describe "APK should contain class #{receiver.attributes['name']}"
        klass = @apk.find_class(receiver.attributes['name'].to_s)
        fail_check if klass.nil?
        fail_check unless klass.method?('onReceive')
      end
    end
  end
end
