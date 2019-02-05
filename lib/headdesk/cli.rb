# frozen_string_literal: true

require 'thor'
require 'headdesk'
require 'awesome_print'

Dir[File.dirname(__FILE__) + '/cli_commands/*.rb'].each { |file| require file }

module Headdesk
  #
  # headdesk CLI
  #
  class CLI < Thor
    no_commands do
      def print_update_message(stream = STDERR)
        stream.puts "Latest version is #{Headdesk::Versions.latest_version}, please run 'bundle update headdesk'".red
      end
    end

    Headdesk::CliCommand.each do |cmd|
      include cmd
    end
  end
end
