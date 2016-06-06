Rails.application.routes.draw do
  post 'authenticate', to: 'auth#authenticate'

  resources :projects, only: [:index]
  resources :users
  resources :password_resets, only: [:create, :update]
end
