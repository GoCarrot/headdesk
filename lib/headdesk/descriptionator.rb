# frozen_string_literal: true

require 'headdesk/descriptionator/resources'

module Headdesk
  #
  # Descriptions for APK methods
  #
  # :reek:RepeatedConditional
  class APKDescriber
    def initialize(mode)
      @unless = (mode == :unless)
    end

    def class?(decl)
      "APK #{@unless ? 'contains' : 'does not contain'} class #{decl.tr('/', '.')}"
    end

    def targets_sdk(gt_eq)
      "APK targets API #{@unless ? '>=' : '<'} #{gt_eq}"
    end

    def min_sdk(gt_eq)
      "APK requires #{@unless ? 'at least' : 'less than'} API #{gt_eq}"
    end

    def resources
      @resources ||= APKResourcesDescriber.new(@unless)
    end
  end

  #
  # Turn parameters passed skip_check and fail_check into descriptions
  #
  class Descriptionator
    attr_reader :apk

    def initialize(mode)
      @apk = APKDescriber.new(mode)
    end
  end
end
