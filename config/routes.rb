Rails.application.routes.draw do
root 'lists#index'
resources :users, only: [:new, :create]
  resources :lists, only: [:new, :create, :destroy]

resources :sessions, only: [:new, :create, :destroy]
end
