# frozen_string_literal: true

require 'tmpdir'
require 'thor'
require 'headdesk'
require 'awesome_print'

module Headdesk
  #
  # headdesk CLI
  #
  # :reek:TooManyStatements
  class CLI < Thor
    desc 'unpack FILE [DESTINATION]', 'Unpack an APK or IPA to [DESTINATION] or to the current directory'
    method_option :analyze, type: :boolean, aliases: '-a'
    def unpack(file, destination = nil)
      # Make sure the input file exists
      unless File.exist?(file)
        STDERR.puts "Could not find: #{file}"
        CLI.command_help(Thor::Base.shell.new, 'unpack')
        return 1
      end

      # Make sure destination exists, if specified
      unless !destination || Dir.exist?(destination)
        STDERR.puts "Could not find destination path: #{destination}"
        CLI.command_help(Thor::Base.shell.new, 'unpack')
        return 1
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
      rescue CliError => cli_err
        STDERR.puts cli_err.message
        CLI.command_help(Thor::Base.shell.new, 'unpack')
        return 1
      rescue StandardError => rb_err
        STDERR.puts err.message.red
        STDERR.puts err.backtrace.ai
        return 1
      end
    end

    desc 'analyze [FILE]', 'Analyze an APK or IPA'
    method_option :path, type: :string
    method_option :json, type: :boolean
    def analyze(file = nil)
      # Make sure input file exsts, if specified
      unless !file || File.exist?(file)
        STDERR.puts "Could not find input file: #{file}"
        CLI.command_help(Thor::Base.shell.new, 'analyze')
        return 1
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
        return 1
      end

      # analyze
      begin
        report = Headdesk::Analyze.at(path)

        if options[:json]
          STDOUT.puts report.to_json
        else
          STDOUT.puts report.to_s
        end
      rescue CliError => cli_err
        STDERR.puts cli_err.message
        CLI.command_help(Thor::Base.shell.new, 'analyze')
        return 1
      rescue StandardError => err
        STDERR.puts err.message.red
        STDERR.puts err.backtrace.ai
        return 1
      end
    ensure
      FileUtils.remove_entry(tmp_dir) if tmp_dir
    end
  end
end
