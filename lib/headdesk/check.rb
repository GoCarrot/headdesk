# frozen_string_literal: true

module Headdesk
  #
  # Check for a potential issue in an apk or ipa
  #
  module Check
    attr_reader :report, :status

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
        check.report[:status] = check.status
        check
      end

      def success?
        @status == :success
      end

      def fail?
        @status == :fail
      end

      def skip?
        @status == :skip
      end

      def describe(desc = nil)
        @last_desc = desc unless desc.nil?
        @last_desc
      end
    end

    def initialize(bundle)
      @apk = bundle
      @ipa = bundle
      @report = {
        description: self.class.describe,
        steps: []
      }
      @status = :success
    end

    def describe(desc = nil)
      @last_desc = desc unless desc.nil?
      @last_desc
    end

    def skip_check_if(passed)
      @status = :skip if passed
      @report[:steps] << {
        description: describe.to_s,
        status: @status
      }
      return unless passed

      throw :halt_check
    end

    def skip_check_unless(passed)
      skip_check_if(!passed)
    end

    def fail_check_if(passed)
      @status = :fail if passed
      @report[:steps] << {
        description: describe.to_s,
        status: @status
      }
      return unless passed

      throw :halt_check
    end

    def fail_check_unless(passed)
      fail_check_if(!passed)
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
