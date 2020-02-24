# frozen_string_literal: true

module Headdesk
  module Checks
    class UnityVersion
      include Check::APK

      check_name 'unity_version'
      describe 'Check Unity version'
      def call
        describe "Built with Unity"
        skip_check unless: -> { apk.unity_version }
        export unity_version: apk.unity_version
      end
    end
  end
end
