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

      Dir.mktmpdir do |tmp_dir|
        args = ['d', '--force']

        args.concat(['--output', tmp_dir]) if destination.nil?
        args.concat(['--output', destination]) unless destination.nil?

        stdout, stderr, exit_code = Headdesk::ApkTool.cmd(*args, path)
        unless exit_code.to_i.zero?
          STDERR.puts stderr
          return exit_code.to_i
        end

        FileUtils.cp_r("#{tmp_dir}/.", Dir.pwd) if destination.nil?
        puts stdout
      end
    end
  end
end
