# frozen_string_literal: true

require 'tmpdir'
require 'thor'
require 'headdesk'
require 'awesome_print'
require 'json'

module Headdesk
  #
  # headdesk CLI
  #
  class CLI < Thor
    desc 'unpack FILE [DESTINATION]', 'Unpack an APK or IPA to [DESTINATION] or to the current directory'
    method_option :analize, type: :boolean, aliases: '-a'
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

        # Analize if requested
        Headdesk::Analize.at(output_path) if options[:analize]
      rescue CliError => e
        STDERR.puts e.message
        CLI.command_help(Thor::Base.shell.new, 'unpack')
        return 1
      rescue StandardError => e
        STDERR.puts e.message.red
        STDERR.puts e.backtrace.ai
        return 1
      end
    end

    desc 'analize [FILE]', 'Analize an APK or IPA'
    method_option :path, type: :string
    method_option :json, type: :boolean
    def analize(file = nil)
      # Make sure input file exsts, if specified
      unless !file || File.exist?(file)
        STDERR.puts "Could not find input file: #{file}"
        CLI.command_help(Thor::Base.shell.new, 'analize')
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
        CLI.command_help(Thor::Base.shell.new, 'analize')
        return 1
      end

      # Analize
      begin
        report = Headdesk::Analize.at(path)

        STDOUT.puts report.to_json if options[:json]
        return if options[:json]

        STDOUT.puts "Bundle Id: #{report[:bundle_id]}"
        STDOUT.puts "minSdkVersion: #{report[:android_sdk]['minSdkVersion']}" if report[:apk]
        STDOUT.puts "targetSdkVersion: #{report[:android_sdk]['targetSdkVersion']}" if report[:apk]
        report[:checks].each do |check|
          STDOUT.puts "#{Headdesk.icon_for_status(check[:status])} #{check[:description]}".public_send(Headdesk.color_for_status(check[:status]))
          check[:steps].each do |step|
            STDOUT.puts "  ↳ #{Headdesk.icon_for_status(step[:status])} #{step[:description]}".public_send(Headdesk.color_for_status(step[:status]))
          end
          STDOUT.puts "  💾 #{check[:export].to_json}".pale unless check[:export].empty?
        end
      rescue CliError => e
        STDERR.puts e.message
        CLI.command_help(Thor::Base.shell.new, 'analize')
        return 1
      rescue StandardError => e
        STDERR.puts e.message.red
        STDERR.puts e.backtrace.ai
        return 1
      end
    ensure
      FileUtils.remove_entry(tmp_dir) if tmp_dir
    end
  end
end
