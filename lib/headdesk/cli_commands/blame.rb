# frozen_string_literal: true

require 'thor'
require 'headdesk'
require 'English'

module Headdesk
  module CliCommands
    #
    # Find out which JAR/AAR is bringing in symbols
    #
    module Blame
      include Headdesk::CliCommand

      def self.included(thor)
        thor.class_eval do
          desc 'blame SYMBOL [PATH]', 'Recursivly search for JARs and AARs which define a given symbol.'
          method_option :json, type: :boolean
          def blame(in_symbol, path = '.')
            unless Dir.exist?(path)
              STDERR.puts "Could not find path: #{path}"
              CLI.command_help(Thor::Base.shell.new, 'blame')
              exit 1
            end

            symbol_matcher = /(.*)(#{Regexp.escape(in_symbol.tr('.', '/'))})([^\.]*)?(\.class)?/

            # Match inside JAR files
            jar_matches = {}
            Dir[File.join(path, '**', '*.jar')].each do |jar|
              stdout = `jar -tf #{jar}`
              exit $CHILD_STATUS.to_i unless $CHILD_STATUS.success?

              matches = Blame.match_lines(stdout, symbol_matcher)
              jar_matches[jar] = matches unless matches.empty?
            end

            # Match inside AAR files
            aar_matches = {}
            Dir[File.join(path, '**', '*.aar')].each do |aar|
              stdout = `unzip -p -j #{aar} classes.jar | jar -t`
              exit $CHILD_STATUS.to_i unless $CHILD_STATUS.success?

              matches = Blame.match_lines(stdout, symbol_matcher)
              aar_matches[aar] = matches unless matches.empty?
            end

            # JSON output if requested
            if options[:json]
              STDOUT.puts({ jar: jar_matches, aar: aar_matches }.to_json)
              exit 0
            end

            # Pretty output
            all_matches = jar_matches.merge(aar_matches)
            all_matches.each do |package, symbols|
              STDOUT.puts '📦 ' + package
              symbols.each do |match|
                STDOUT.puts "  ↳ #{match[0]}#{match[1].green}#{match[2]&.chomp('.')}"
              end
            end

            CLI.print_update_message unless Headdesk::Versions.latest_version?

            exit !all_matches.empty?
          end
        end
      end

      def self.match_lines(stdout, matcher)
        stdout.lines
              .each(&:strip!)
              .map { |line| matcher.match(line) }
              .compact
              .map { |match| match.captures.map { |capture| capture&.tr('/', '.') } }
      end
    end
  end
end
