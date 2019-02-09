# frozen_string_literal: true

require 'simplecov'
SimpleCov.start

Dir[File.dirname(__FILE__) + '/support/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.extend ApkHelpers
end
