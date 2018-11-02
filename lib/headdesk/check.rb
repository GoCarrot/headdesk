# frozen_string_literal: true

module Headdesk
  #
  # Check for a potential issue in an apk or ipa
  #
  module Check
    attr_reader :report

    def self.for_apk
      APK.all
    end

    def self.for_ipa
      IPA.all
    end

    def self.included(klass)
      klass.extend(ClassMethods)
    end

    #
    # Class methods for Check
    #
    module ClassMethods
      def call_on(bundle)
        check = new(bundle)
        catch(:halt_check) do
          check.call if check.respond_to?(:call)
        end
        check
      end

      def describe(desc = nil)
        @last_desc = desc unless desc.nil?
        @last_desc
      end
    end

    def initialize(bundle)
      @apk = bundle
      @ipa = bundle
      @report = [self.class.describe]
    end

    def describe(desc = nil)
      @last_desc = desc unless desc.nil?
      @last_desc
    end

    def skip_check
      @report << "Skipped because: #{describe}"
      throw :halt_check
    end

    def fail_check
      @report << "Failed because: #{describe}"
      throw :halt_check
    end

    #
    # Check applies to APKs
    #
    module APK
      def self.all
        @all
      end

      def self.included(klass)
        @all ||= []
        @all << klass
        klass.include(Check)
      end
    end

    #
    # Check applies to IPAs
    #
    module IPA
      def self.all
        @all
      end

      def self.included(klass)
        @all ||= []
        @all << klass
        klass.include(Check)
      end
    end
  end
end

Dir[File.dirname(__FILE__) + '/checks/*.rb'].each { |file| require file }
