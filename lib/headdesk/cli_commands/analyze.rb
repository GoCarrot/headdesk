# frozen_string_literal: true

require 'thor'
require 'headdesk'
require 'tmpdir'

module Headdesk
  module CliCommands
    #
    # Analyze an APK/IPA file
    #
    module Analyze
      include Headdesk::CliCommand

      def self.included(thor)
        thor.class_eval do
          desc 'analyze [FILE]', 'Analyze an APK or IPA'
          method_option :path, type: :string
          method_option :json, type: :boolean
          def analyze(file = nil)
            # Make sure input file exsts, if specified
            unless !file || File.exist?(file)
              STDERR.puts "Could not find input file: #{file}"
              CLI.command_help(Thor::Base.shell.new, 'analyze')
              exit 1
            end

            # Unpack APK if needed
            path = options[:path]
            tmp_dir = nil
            if file
              path = tmp_dir = Dir.mktmpdir
              Headdesk::ApkTool.unpack_to(file, tmp_dir)
            end

            # Make sure path exists
            unless Dir.exist?(path)
              STDERR.puts "Could not find path: #{path}"
              CLI.command_help(Thor::Base.shell.new, 'analyze')
              exit 1
            end

            # analyze
            begin
              report = Headdesk::Analyze.at(path)

              if options[:json]
                STDOUT.puts report.to_json
              else
                STDOUT.puts report.to_s
                print_update_message unless Headdesk::Versions.latest_version?
              end
            rescue CliError => cli_err
              STDERR.puts cli_err.message
              CLI.command_help(Thor::Base.shell.new, 'analyze')
              exit 1
            rescue StandardError => err
              STDERR.puts err.message.red
              STDERR.puts err.backtrace.ai
              exit 1
            end
          ensure
            FileUtils.remove_entry(tmp_dir) if tmp_dir
          end
        end
      end
    end
  end
end
