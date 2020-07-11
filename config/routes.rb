# frozen_string_literal: true

Ring::Engine.routes.draw do
  root to: 'ping#show'
end
