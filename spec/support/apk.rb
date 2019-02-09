# frozen_string_literal: true

require_relative '../../lib/headdesk'

require 'fileutils'
require 'tmpdir'

#
# Class for composing test APK contents
#
class Apk
  attr_reader :base_name, :manifest, :base_path, :context, :apk_path

  def initialize(base_name, context)
    @base_name = base_name
    @base_path = File.expand_path(@base_name)
    @context = context

    @apk_path = Dir.mktmpdir
    ObjectSpace.define_finalizer(self, self.class.cleanup(@apk_path))

    FileUtils.copy_entry(@base_path, @apk_path)
  end

  def then(&block)
    proc = Proc.new do |apk|
      context "when using #{apk.base_name} APK#{", with manifest additions: \n#{apk.manifest.additions.pale}" unless apk.manifest.additions.empty?}" do
        context 'the report' do
          subject(:report) { described_class.new(apk.to_headdesk_apk).process }
          instance_exec(&block)
        end
      end
    end

    @context.instance_exec self, &proc
  end

  def self.cleanup(tmp_dir)
    proc { FileUtils.remove_entry(tmp_dir) if tmp_dir }
  end

  def and(other, &block)
    with(other, &block)
  end

  def with(other, &block)
    case other
    when String, Symbol then with(@context.instance_exec &proc { sdk(other) })
    when Manifest then @manifest = other
    when Sdk then add_sdk(other)
    when Hash then other.each_value { |value| with(value) }
    when Array then other.each { |value| with(value) }
    end
    self.then(&block) if block_given?
    self
  end

  def add_sdk(sdk)
    FileUtils.copy_entry(sdk.path, @apk_path)
    self
  end

  def to_headdesk_apk
    Headdesk::Apk.new(@apk_path, @manifest&.contents, @yaml)
  end

  #
  # Sdk
  #
  Sdk = Struct.new(:name, :path)

  #
  # Manifest base, and additions
  #
  Manifest = Struct.new(:additions, :contents)
end
