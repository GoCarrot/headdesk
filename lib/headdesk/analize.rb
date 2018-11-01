# frozen_string_literal: true

require 'headdesk/apk'

module Headdesk
  #
  # Analize an APK/IPA
  #
  class Analize
    def self.at(path)
      Headdesk::Apk.new(path).analize
    end
  end
end
