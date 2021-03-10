Rails.application.routes.draw do
  get 'ping', to: 'application#ping'

  resources :classifieds, only: %w(index show)

  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
