# frozen_string_literal: true

require 'thor'
require 'headdesk'

module Headdesk
  module CliCommands
    #
    # Print/compare version
    #
    module Version
      include Headdesk::CliCommand

      def self.included(thor)
        thor.class_eval do
          map %w[--version] => :__version
          desc '--version [COMPARE_VERSION]', 'Print, and optionally compare version.'
          long_desc <<~LONGDESC
            `--version` will print the version to STDOUT, and if a newer version is available it will print out an update message to STDERR.

            You can optionally specify a version number as a second argument, in which case  will compare the current version with that version exit with code 1 if the current version is less than the provided version. It will exit with code 0 if the current version is less than, or equal to the provided version.
          LONGDESC
          def __version(cmp_version = nil)
            STDOUT.puts Headdesk::VERSION
            print_update_message unless Headdesk::Versions.latest_version?

            exit (Headdesk::Versions.version <=> Gem::Version.new(cmp_version)) > 0 if cmp_version
          end
        end
      end
    end
  end
end
