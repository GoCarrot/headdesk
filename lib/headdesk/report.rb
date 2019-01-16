# frozen_string_literal: true

require 'erb'
require 'json'

module Headdesk
  #
  # Descriptions for APK methods
  #
  class Report
    attr_reader :apk, :ipa, :bundle_id, :file_name, :android_sdk, :checks

    def initialize
      @checks = []
    end

    def <<(value)
      @checks << value
    end

    def icon_for_status
      {
        success: '✔',
        fail: '✘',
        skip: '⇣'
      }
    end

    def color_for_status
      {
        success: "\e[32m%s\e[0m",
        fail: "\e[31m%s\e[0m",
        skip: "\e[36m%s\e[0m"
      }
    end

    def link
      "\e[37;4m%s\e[0m"
    end

    def to_s
      ERB.new(<<~DESCRIPTION, nil, '>').result(binding)
        Bundle Id: <%= bundle_id %>\n
        <%= describe %>\n
        <% for @check in checks %>
          <%= color_for_status[@check[:status]] % icon_for_status[@check[:status]] %> <%= color_for_status[@check[:status]] % @check[:description] %> (<%= link % @check[:doc] %>)\n
          <% for @step in @check[:steps] %>
            ↳ <%= color_for_status[@step[:status]] % icon_for_status[@step[:status]] %> <%= color_for_status[@step[:status]] % @step[:description] %>\n
          <% end %>
          <% unless @check[:export].empty? %><%= "  💾 " + @check[:export].to_json + "\n" %><% end %>\n
        <% end %>
      DESCRIPTION
    end

    def to_h
      {
        bundle_id: bundle_id,
        file_name: file_name,
        checks: checks
      }
    end

    def to_json(opts = {})
      to_h.to_json(opts)
    end

    def describe; end
  end

  #
  # Report from an APK analysis
  #
  class APKReport < Report
    def initialize(apk)
      super()
      @bundle_id = apk.android_manifest.xpath('//manifest').first.attributes['package']
      @file_name = apk.yaml['apkFileName']
      @android_sdk = apk.sdk_info
    end

    def describe
      <<~DESCRIPTION
        minSdkVersion: #{@android_sdk['minSdkVersion']}
        targetSdkVersion: #{@android_sdk['targetSdkVersion']}
      DESCRIPTION
    end

    def to_h
      super.merge(
        apk: true,
        android_sdk: @android_sdk
      )
    end
  end
end
