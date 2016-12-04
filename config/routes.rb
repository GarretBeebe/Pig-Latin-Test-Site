Rails.application.routes.draw do
  root 'main#index'
  mount CoalitionPlatform::API => "/api"
end
