# frozen_string_literal: true

require 'headdesk/apk'
require 'headdesk/ipa'

module Headdesk
  #
  # analyze an APK/IPA
  #
  class Analyze
    def self.at(path)
      begin
        return Headdesk::Apk.new(path).analyze
      rescue
      end
      begin
        return Headdesk::Ipa.new(path).analyze
      rescue
      end
      throw CliError.new('Path did not contain an unpacked IPA or APK.')
    end
  end
end
