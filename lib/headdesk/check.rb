# frozen_string_literal: true

require 'headdesk/descriptionator'

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

    def check_control_flow(assign_status, conditions)
      pass = conditions.nil? || conditions.empty? || conditions[0]
      pass |= !conditions[:unless].call if conditions[:unless].respond_to? :call
      pass |= conditions[:if].call if conditions[:if].respond_to? :call

      # TODO: greater_than, less_than, equals

      # rubocop:disable RescueStandardError
      # Try and get an auto-description
      descriptionator = Headdesk::Descriptionator.new
      description = begin
                      if conditions[:unless].respond_to?(:call)
                        desc = descriptionator.instance_exec(&conditions[:unless])
                        desc.is_a?(String) ? desc : describe.to_s
                      elsif conditions[:if].respond_to?(:call)
                        desc = descriptionator.instance_exec(&conditions[:if])
                        desc.is_a?(String) ? desc : describe.to_s
                      else
                        describe.to_s
                      end
                    rescue
                      describe.to_s
                    end
      # rubocop:enable RescueStandardError

      @status = assign_status if pass
      @report[:steps] << {
        description: description,
        status: @status
      }
      return unless pass

      throw :halt_check
    end

    def skip_check(conditions = {})
      check_control_flow(:skip, conditions)
    end

    def fail_check(conditions = {})
      check_control_flow(:fail, conditions)
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
