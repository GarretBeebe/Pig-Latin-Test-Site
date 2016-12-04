Rails.application.routes.draw do
  root 'main#index'
  mount PigPlatform::API => "/api"
end
