# frozen_string_literal: true

module Headdesk
  #
  # Descriptions for APK methods
  #
  class APKDescriber
    def class?(decl)
      "APK contains class #{decl.tr('/', '.')}"
    end

    def targets_sdk(gt_eq)
      "APK targets API >= #{gt_eq}"
    end
  end

  #
  # Turn parameters passed skip_check and fail_check into descriptions
  #
  class Descriptionator
    def initialize
      @apk = APKDescriber.new
    end
  end
end
