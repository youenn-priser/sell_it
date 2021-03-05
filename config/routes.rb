Rails.application.routes.draw do
  get 'ping', to: 'application#ping'

  resources :classifieds, only: %w(index show)
end
