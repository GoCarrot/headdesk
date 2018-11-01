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
    def unpack(path, destination = Dir.pwd)
      unless File.exist?(path)
        STDERR.puts "Could not find: #{path}"
        CLI.command_help(Thor::Base.shell.new, 'unpack')
        return 1
      end

      stdout, stderr, exit_code = Headdesk::ApkTool.cmd(path, 'd', '--force', '--output', destination, path)
      unless exit_code.to_i.zero?
        STDERR.puts stderr
        return 1
      end

      puts stdout
    end
  end
end
