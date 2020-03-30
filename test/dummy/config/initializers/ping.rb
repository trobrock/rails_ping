# frozen_string_literal: true

Ping.configure do |config|
  config.add_check :good_check, -> { true }
  config.add_check :bad_check, -> { false }
end
