# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'rails_ping/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'rails_ping'
  spec.version     = RailsPing::VERSION
  spec.authors     = ['Trae Robrock']
  spec.email       = ['trobrock@gmail.com']
  spec.homepage    = 'https://github.com/trobrock/rails_ping'
  spec.summary     = 'A simple rails engine to provide a health check endpoint.'
  spec.description = 'A simple rails engine to provide a health check endpoint.'
  spec.license     = 'MIT'

  spec.files = Dir['{app,config,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '>= 5', '< 7'
end
