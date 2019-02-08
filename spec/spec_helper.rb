# frozen_string_literal: true

Dir[File.dirname(__FILE__) + '/support/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.extend Apk
end
