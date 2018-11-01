# frozen_string_literal: true

require 'thor'
require 'headdesk'

module Headdesk
  #
  # headdesk CLI
  #
  class CLI < Thor
    desc 'unpack PATH', 'Unpack an APK or IPA'
    method_options destination: :string
    def unpack(path, destination = nil)
      unless File.exist?(path)
        STDERR.puts "Could not find: #{path}"
        CLI.command_help(Thor::Base.shell.new, 'unpack')
        return 1
      end

      args = ['d', '--force']
      args.concat(['--output', destination]) unless destination.nil?

      stdout, stderr, exit_code = Headdesk::ApkTool.cmd(*args, path)
      unless exit_code.to_i.zero?
        STDERR.puts stderr
        return 1
      end

      puts stdout
    end
  end
end
