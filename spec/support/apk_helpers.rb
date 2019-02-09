# frozen_string_literal: true

require_relative 'apk'
require_relative '../../lib/headdesk'

require 'awesome_print'

RSpec::Matchers.define :succeed_with_description do |expected|
  match do |actual|
    expect(actual).to include a_hash_including(description: a_string_matching(expected), status: :success)
  end
end

RSpec::Matchers.define :fail_with_description do |expected|
  match do |actual|
    expect(actual).to include a_hash_including(description: a_string_matching(expected), status: :fail)
  end
end

#
# Helpers for testing APK specs
#
# :reek:UtilityFunction
module ApkHelpers
  def apk(apk_name = 'default')
    apk_path = File.expand_path(File.join(File.dirname(__FILE__), '..', 'fixtures', 'apks', apk_name))
    Apk.new(apk_path, self)
  end

  def sdk(sdk_name)
    sdk_name = sdk_name.to_s.downcase
    sdk_path = File.expand_path(File.join(File.dirname(__FILE__), '..', 'fixtures', 'sdks', sdk_name))
    Apk::Sdk.new(sdk_name, sdk_path)
  end

  def default_apk_with(manifest, &block)
    apk_with('default', manifest, &block)
  end

  def apk_with(apk_name = 'default', manifest, &block)
    rng = Random.rand
    apk_path = File.expand_path(File.join(File.dirname(__FILE__), '..', 'fixtures', 'apks', apk_name))
    Apk.new(apk_path, self).with(manifest).tap do |apk|
      context "when using #{apk_name} APK#{", with manifest additions: \n#{manifest.additions.pale}" unless manifest.additions.empty?}" do
        context 'the report' do
          subject(:report) { described_class.new(apk.to_headdesk_apk).process }
          instance_exec(&block)
        end
      end
    end
  end

  def with_report_steps(&block)
    context 'the steps in the report' do
      subject(:steps) { report[:steps] }
      instance_exec(&block)
    end
  end

  def application_manifest
    application_manifest_adding
  end

  def application_manifest_adding(additions = '')
    Apk::Manifest.new(additions.rstrip, <<~MANIFEST
      <?xml version="1.0" encoding="utf-8"?>
      <manifest xmlns:android="http://schemas.android.com/apk/res/android"
                xmlns:amazon="http://schemas.amazon.com/apk/res/android"
                xmlns:tools="http://schemas.android.com/tools"
                package="rspec.headdesk"
                android:versionCode="1"
                android:versionName="1.0">
        <application>
          #{additions}
        </application>
      </manifest>
    MANIFEST
  )
  end
end
