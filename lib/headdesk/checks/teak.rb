# frozen_string_literal: true

module Headdesk
  #
  # Module for Teak checks
  #
  module Teak
  end
end

Dir[File.dirname(__FILE__) + '/teak/*.rb'].each { |file| require file }
