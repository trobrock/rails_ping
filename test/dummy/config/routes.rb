Rails.application.routes.draw do
  mount RailsPing::Engine => "/ping"
end
