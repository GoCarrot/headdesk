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
      Gems.versions('headdesk').collect do |version|
        Gem::Version.new(version['number'])
      rescue StandardError
        nil
      end
          .compact
          .sort
          .reverse
    end

    def self.latest_version
      Gem::Version.new(Gems.latest_version('headdesk')['version'])
    end

    def self.latest_version?(version = VERSION)
      latest_version == Gem::Version.new(version)
    end
  end
end
