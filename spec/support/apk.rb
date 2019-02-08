# frozen_string_literal: true

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
module Apk
  Manifest = Struct.new(:additions, :contents)

  def default_apk_with(manifest, &block)
    apk_with('default', manifest, &block)
  end

  def apk_with(apk = 'default', manifest, &block)
    context "when using the #{apk} APK#{", with manifest additions: \n#{manifest.additions.pale}" unless manifest.additions.empty?}" do
      apk_path = File.expand_path(File.join(File.dirname(__FILE__), '..', 'fixtures', "#{apk}_apk"))
      context 'the report' do
        subject(:report) { described_class.new(Headdesk::Apk.new(apk_path, manifest.contents)).process }
        instance_exec(&block)
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
    Manifest.new(additions.rstrip, <<~MANIFEST
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
