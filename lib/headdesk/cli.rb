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
    no_commands do
      def self.print_update_message(stream = STDERR)
        stream.puts "Latest version is #{Headdesk::Versions.latest_version}, please run 'bundle update headdesk'".red
      end
    end

    #
    # unpack
    #
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
      rescue CliError => cli_err
        STDERR.puts cli_err.message
        CLI.command_help(Thor::Base.shell.new, 'unpack')
        exit 1
      rescue StandardError => rb_err
        STDERR.puts err.message.red
        STDERR.puts err.backtrace.ai
        exit 1
      end
    end

    #
    # analyze
    #
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
          CLI.print_update_message unless Headdesk::Versions.latest_version?
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

    #
    # version
    #
    map %w[--version -v] => :__version

    desc '--version, -v [COMPARE_VERSION]', 'Print, and optionally compare version.'
    long_desc <<~LONGDESC
      `--version` will print the version to STDOUT, and if a newer version is available it will print out an update message to STDERR.

      You can optionally specify a version number as a second argument, in which case  will compare the current version with that version exit with code 1 if the current version is less than the provided version. It will exit with code 0 if the current version is less than, or equal to the provided version.
    LONGDESC
    def __version(cmp_version = nil)
      STDOUT.puts Headdesk::VERSION
      CLI.print_update_message unless Headdesk::Versions.latest_version?

      exit (Headdesk::Versions.version <=> Gem::Version.new(cmp_version)) > 0 if cmp_version
    end
  end
end
