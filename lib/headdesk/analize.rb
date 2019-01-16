# frozen_string_literal: true

require 'headdesk/apk'

module Headdesk
  #
  # analyze an APK/IPA
  #
  class analyze
    def self.at(path)
      Headdesk::Apk.new(path).analyze
    end
  end
end
