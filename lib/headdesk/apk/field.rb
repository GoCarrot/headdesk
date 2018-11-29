# frozen_string_literal: true

module Headdesk
  class Apk
    #
    # A Smali bytecode field
    #
    class Field
      attr_reader :code, :value

      def initialize(matchdata)
        @code = matchdata[0]
        @value = matchdata[1]

        @value.extend(ExtraMethods)
      end
    end

    #
    # Extra methods for 'value'
    #
    module ExtraMethods
      def to_version
        /^(\d+\.)?(\d+\.)?(\*|\d+)$/.match(self).captures.map(&:to_i)
      end
    end
  end
end
