# frozen_string_literal: true

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
        !method(name).nil?
      end

      def method(method_name)
        /(^\.method .* #{method_name}.*$[\s\S]*?\.end method)/.match(@smali)
      end
    end
  end
end
