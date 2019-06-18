# frozen_string_literal: true

require 'gems'

module Headdesk
  #
  # Version information from RubyGems.org
  #
  class Versions
    def self.version
      Gem::Version.new(VERSION)
    end

    def self.versions
      begin
        Gems.versions('headdesk').collect do |version|
          Gem::Version.new(version['number'])
        end
          .compact
          .sort
          .reverse
      rescue StandardError
        nil
      end
    end

    def self.latest_version
      Gem::Version.new(Gems.latest_version('headdesk')['version'])
    end

    def self.latest_version?(version = VERSION)
      latest_version == Gem::Version.new(version)
    end
  end
end
