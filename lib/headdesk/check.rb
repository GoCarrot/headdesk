# frozen_string_literal: true

require 'headdesk/descriptionator'

module Headdesk
  #
  # Check for a potential issue in an apk or ipa
  #
  # :reek:ModuleInitialize
  module Check
    attr_reader :report, :status, :apk, :ipa

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
      def describe(desc = nil)
        @last_desc = desc if desc
        @last_desc
      end
    end

    def initialize(bundle)
      @apk = bundle
      @ipa = bundle
      @report = {
        description: self.class.describe,
        steps: [],
        export: {}
      }
      @status = :skip
    end

    def describe(desc = nil)
      @last_desc = desc if desc
      @last_desc
    end

    # :reek:ManualDispatch and :reek:TooManyStatements and :reek:FeatureEnvy
    def check_control_flow(status_to_assign, conditions = nil)
      pass = !conditions || conditions.empty?
      raise ArgumentError, 'Do not specify both if: and unless:' if
        conditions.key?(:if) && conditions.key?(:unless)

      pass = Check.condition?(conditions, :if) if conditions.key? :if
      pass = !Check.condition?(conditions, :unless) if conditions.key? :unless

      skip = false
      raise ArgumentError, 'Do not specify both skip_if: and skip_unless:' if
        conditions.key?(:skip_if) && conditions.key?(:skip_unless)

      skip = Check.condition?(conditions, :skip_if) if conditions.key? :skip_if
      skip = !Check.condition?(conditions, :skip_unless) if conditions.key? :skip_unless

      # TODO: greater_than, less_than, equals

      # rubocop:disable RescueStandardError
      # Try and get an auto-description
      default_description = describe.to_s
      description = begin
                      if conditions[:unless].respond_to?(:call)
                        descriptionator = Headdesk::Descriptionator.new(:unless)
                        desc = descriptionator.instance_exec(&conditions[:unless])
                        desc.is_a?(String) ? desc : default_description
                      elsif conditions[:if].respond_to?(:call)
                        descriptionator = Headdesk::Descriptionator.new(:if)
                        desc = descriptionator.instance_exec(&conditions[:if])
                        desc.is_a?(String) ? desc : default_description
                      else
                        default_description
                      end
                    rescue
                      default_description
                    end
      # rubocop:enable RescueStandardError

      @status = status_to_assign if pass && !skip
      @report[:steps] << {
        description: description,
        status: skip ? :skip : @status
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

    def export(merge = {})
      @report[:export].merge! merge
    end

    def preconditions?
      true
    end

    def run
      before
      catch(:halt_check) do
        call
      end
      after

      @status
    end

    # :reek:ManualDispatch
    def process
      return report unless respond_to?(:call) && preconditions?

      @status = :success
      report[:status] = run
      report
    end

    def before; end

    def after; end

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

    # :reek:ManualDispatch
    def self.condition?(conditions, key)
      condition = conditions.fetch(key, nil)
      if !condition
        false
      elsif condition.respond_to? :call
        condition.call
      elsif %w[true false].include?(condition.to_s)
        condition.to_s == 'true'
      else
        raise ArgumentError, 'fail_check and skip_check only accept truthy, falsy, nil, or Proc arguments'
      end
    end
  end
end

Dir[File.dirname(__FILE__) + '/checks/*.rb'].each { |file| require file }
