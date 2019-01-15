# frozen_string_literal: true

module Headdesk
  module Checks
    module Teak
      #
      # Check to make sure that an APK, which uses Teak, has caching enabled.
      #
      class Configuration
        include Checks::Teak::APK

        check_name 'configuration'
        describe 'Check Teak configuration'
        # :reek:UncommunicativeVariableName { accept: ['gcm_defaultSenderId'] }
        def call
          # App Id
          teak_app_id = apk.resources
                           .values
                           .string
                           .io_teak_app_id
          # TODO: Manifest meta-data
          describe 'Teak App Id configured'
          fail_check if: !teak_app_id
          export teak_app_id: teak_app_id

          # Api Key
          teak_api_key = apk.resources
                            .values
                            .string
                            .io_teak_api_key
          # TODO: Manifest meta-data
          describe 'Teak API Key configured'
          fail_check if: !teak_api_key
          export teak_api_key: teak_api_key

          # GCM Sender Id
          io_teak_gcm_sender_id = apk.resources
                                     .values
                                     .string
                                     .io_teak_gcm_sender_id
          # TODO: Manifest meta-data
          gcm_defaultSenderId ||= apk.resources
                                     .values
                                     .string
                                     .gcm_defaultSenderId
          describe "'gcm_defaultSenderId' is specified, and different from 'io_teak_gcm_sender_id'"
          fail_check if: gcm_defaultSenderId != io_teak_gcm_sender_id if gcm_defaultSenderId

          gcm_sender_id = io_teak_gcm_sender_id || gcm_defaultSenderId
          describe "Either 'io_teak_gcm_sender_id' or 'gcm_defaultSenderId' configured"
          fail_check if: !gcm_sender_id
          export gcm_sender_id: gcm_sender_id

          # Firebase App Id
          io_teak_firebase_app_id = apk.resources
                                       .values
                                       .string
                                       .io_teak_firebase_app_id
          # TODO: Manifest meta-data
          google_app_id = apk.resources
                             .values
                             .string
                             .google_app_id
          describe "'google_app_id' is specified, and different from 'io_teak_firebase_app_id'"
          fail_check if: google_app_id != io_teak_firebase_app_id if google_app_id

          firebase_app_id = google_app_id || io_teak_firebase_app_id
          describe "Either 'io_teak_firebase_app_id' or 'google_app_id' configured"
          fail_check if: !firebase_app_id, skip_if: teak_sdk.major < 2
          export gcm_sender_id: gcm_sender_id
        end
      end
    end
  end
end
