# frozen_string_literal: true

module RailsPing
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  end
end
