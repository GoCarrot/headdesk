# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'headdesk/version'

Gem::Specification.new do |spec|
  spec.name          = 'headdesk'
  spec.version       = Headdesk::VERSION
  spec.authors       = ['Pat Wilson']
  spec.email         = ['pat@teak.io']

  spec.summary       = 'headdesk helps identify and solve common issues in mobile development by analizing APKs and IPAs.'
  spec.description   = ''
  spec.homepage      = 'https://github.com/GoCarrot/headdesk'
  spec.license       = 'MIT'

  # spec.post_install_message = 'For breaking change announcements...'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'gem-release', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'reek', '~> 5.0'
  spec.add_development_dependency 'rspec', '~> 3.8'
  spec.add_development_dependency 'rubocop', '~> 0', '>= 0.49.0'
  spec.add_development_dependency 'simplecov', '~> 0', '>= 0.16.0'

  spec.add_dependency 'awesome_print', '~> 1.8'
  spec.add_dependency 'gems', '~> 1.1'
  spec.add_dependency 'nokogiri', '~> 1.10'
  spec.add_dependency 'oily_png', '~> 1.2'
  spec.add_dependency 'thor', '~> 0.20'
end
