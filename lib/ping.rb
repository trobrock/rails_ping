# frozen_string_literal: true

require 'ping/engine'

module Ping
  mattr_reader :checks
  @@checks = {} # rubocop:disable Style/ClassVars

  def self.configure
    yield self
  end

  def self.add_check(name, check)
    @@checks[name] = check
  end
end
