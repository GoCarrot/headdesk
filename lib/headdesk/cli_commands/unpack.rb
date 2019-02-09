# frozen_string_literal: true

require 'thor'
require 'headdesk'
require 'tmpdir'

module Headdesk
  module CliCommands
    #
    # Unpack an APK/IPA
    #
    module Unpack
      include Headdesk::CliCommand

      def self.included(thor)
        thor.class_eval do
          desc 'unpack FILE [DESTINATION]', 'Unpack an APK or IPA to [DESTINATION] or to the current directory'
          method_option :analyze, type: :boolean, aliases: '-a'
          def unpack(file, destination = nil)
            # Make sure the input file exists
            unless File.exist?(file)
              STDERR.puts "Could not find: #{file}"
              CLI.command_help(Thor::Base.shell.new, 'unpack')
              exit 1
            end

            # Make sure destination exists, if specified
            unless !destination || Dir.exist?(destination)
              STDERR.puts "Could not find destination path: #{destination}"
              CLI.command_help(Thor::Base.shell.new, 'unpack')
              exit 1
            end

            begin
              stdout = nil
              output_path = destination

              if !destination
                # Output to tempdir, then copy to cwd if no destination specified
                Dir.mktmpdir do |tmp_dir|
                  output_path = tmp_dir
                  stdout = Headdesk::ApkTool.unpack_to(file, tmp_dir)
                  FileUtils.cp_r("#{tmp_dir}/.", Dir.pwd)
                end
              else
                stdout = Headdesk::ApkTool.unpack_to(file, destination)
              end

              # analyze if requested
              Headdesk::Analyze.at(output_path) if options[:analyze]

              CLI.print_update_message unless Headdesk::Versions.latest_version?
            rescue CliError => cli_err
              STDERR.puts cli_err.message
              CLI.command_help(Thor::Base.shell.new, 'unpack')
              exit 1
            rescue StandardError => rb_err
              STDERR.puts rb_err.message.red
              STDERR.puts rb_err.backtrace.ai
              exit 1
            end
          end
        end
      end
    end
  end
end
