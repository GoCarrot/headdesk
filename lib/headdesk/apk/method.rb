# frozen_string_literal: true

module Headdesk
  class Apk
    #
    # A Smali bytecode method
    #
    class Method
      attr_reader :code

      def initialize(matchdata)
        @code = matchdata[0]
      end
    end
  end
end
