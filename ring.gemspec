# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'ring/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'ring'
  spec.version     = Ring::VERSION
  spec.authors     = ['Trae Robrock']
  spec.email       = ['trobrock@gmail.com']
  spec.homepage    = 'https://github.com/trobrock/ring'
  spec.summary     = 'A simple rails engine to provide a health check endpoint.'
  spec.description = 'A simple rails engine to provide a health check endpoint.'
  spec.license     = 'MIT'

  spec.files = Dir['{app,config,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '>= 5', '< 7'
end
