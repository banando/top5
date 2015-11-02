Rails.application.routes.draw do
root 'lists#index'
resources :user, only: [:new, :create]
resources :lists
resources :sessions, only: [:new, :create, :destroy]
end
