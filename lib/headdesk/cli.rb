# frozen_string_literal: true

require 'tmpdir'
require 'thor'
require 'headdesk'
require 'colorize'

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
      unless destination.nil? || Dir.exist?(destination)
        STDERR.puts "Could not find destination path: #{destination}"
        CLI.command_help(Thor::Base.shell.new, 'unpack')
        return 1
      end

      begin
        stdout = nil
        output_path = destination

        if destination.nil?
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
      rescue ArgumentError => e
        STDERR.puts e.message
        CLI.command_help(Thor::Base.shell.new, 'unpack')
        return 1
      rescue StandardError => e
        STDERR.puts "apktool error: #{e.message}"
        return 1
      end
    end

    desc 'analize [FILE]', 'Analize an APK or IPA'
    method_option :path, type: :string, aliases: '-p'
    def analize(file = nil)
      # Make sure input file exsts, if specified
      unless file.nil? || File.exist?(file)
        STDERR.puts "Could not find input file: #{file}"
        CLI.command_help(Thor::Base.shell.new, 'analize')
        return 1
      end

      # Unpack APK if needed
      path = options[:path]
      tmp_dir = nil
      unless file.nil?
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

        STDOUT.puts report[:file_name]
        STDOUT.puts report[:android_sdk]
        report[:checks].each do |check|
          icon = case check[:status]
                 when :success
                   '✔'
                 when :fail
                   '✘'
                 else
                   '⇣'
                 end

          color = case check[:status]
                  when :success
                    :green
                  when :fail
                    :red
                  else
                    :light_blue
                  end

          STDOUT.puts "#{icon} #{check[:description]}".colorize(color)
          check[:steps].each do |step|
            STDOUT.puts "  ↳ #{step}".colorize(color)
          end
        end
      rescue ArgumentError => e
        STDERR.puts e.message
        CLI.command_help(Thor::Base.shell.new, 'analize')
        return 1
      rescue StandardError => e
        STDERR.puts e.message
        return 1
      end
    ensure
      FileUtils.remove_entry(tmp_dir) unless tmp_dir.nil?
    end
  end
end
