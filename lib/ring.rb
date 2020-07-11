# frozen_string_literal: true

require 'ring/engine'

module Ring
  mattr_reader :checks
  @@checks = {} # rubocop:disable Style/ClassVars

  def self.configure
    yield self
  end

  def self.add_check(name, check)
    @@checks[name] = check
  end
end
