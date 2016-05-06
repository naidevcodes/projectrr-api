Rails.application.routes.draw do
  resources :projects, only: [:index]
  resources :users
end
