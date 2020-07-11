# frozen_string_literal: true

module Ring
  class Engine < ::Rails::Engine
    isolate_namespace Ring
  end
end
