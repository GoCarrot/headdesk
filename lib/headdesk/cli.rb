# frozen_string_literal: true

require 'tmpdir'
require 'thor'
require 'headdesk'

module Headdesk
  #
  # headdesk CLI
  #
  class CLI < Thor
    desc 'unpack PATH [DESTINATION]', 'Unpack an APK or IPA to <DESTINATION> or the current directory'
    method_options destination: :string
    def unpack(path, destination = nil)
      # Make sure the input path exists
      unless File.exist?(path)
        STDERR.puts "Could not find: #{path}"
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

        if destination.nil?
          # Output to tempdir, then copy to cwd if no destination specified
          Dir.mktmpdir do |tmp_dir|
            stdout = Headdesk::ApkTool.unpack_to(path, tmp_dir)
            FileUtils.cp_r("#{tmp_dir}/.", Dir.pwd)
          end
        else
          stdout = Headdesk::ApkTool.unpack_to(path, destination)
        end

        puts stdout
      rescue ArgumentError => e
        STDERR.puts e
        CLI.command_help(Thor::Base.shell.new, 'unpack')
        return 1
      rescue SystemError => e
        STDERR.puts "apktool error: #{e}"
        return 1
      end
    end
  end
end
