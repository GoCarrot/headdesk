# frozen_string_literal: true

require 'headdesk/apk/field'
require 'headdesk/apk/method'

module Headdesk
  class Apk
    #
    # A Smali bytecode class
    #
    class Class
      # Formats:
      #   android/content/Context
      #   android.content.Context
      def self.path_for(decl)
        File.join(*decl.split(%r{[\/,\.]}))
      end

      def initialize(smali_file)
        @smali = File.read(smali_file)
      end

      def method?(name)
        method(name) != false
      end

      def method(name)
        matchdata = /(^\.method .* #{name}.*$[\s\S]*?\.end method)/.match(@smali)
        return nil unless matchdata

        Method.new(matchdata)
      end

      def field?(name)
        field(name) != false
      end

      def field(name)
        matchdata = /^\.field .* #{name}.* = "(.*)"$/.match(@smali)
        return nil unless matchdata

        Field.new(matchdata)
      end
    end
  end
end
