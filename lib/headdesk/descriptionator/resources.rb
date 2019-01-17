# frozen_string_literal: true

module Headdesk
  #
  # Descriptions for APK methods
  #
  # :reek:RepeatedConditional
  class APKResourcesDescriber
    def initialize(mode_unless)
      @unless = mode_unless
    end

    def file?(file_name)
      "APK #{@unless ? 'contains' : 'does not contain'} resource file '#{file_name}'"
    end
  end
end
