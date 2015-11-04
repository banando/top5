Rails.application.routes.draw do
root 'lists#index'
get '/logout', to: 'sessions#destroy'
get '/login', to: 'sessions#new'
resources :users, only: [:new, :create]
resources :lists, except: [:patch] do
  resources :comments, shallow: true
end

resources :sessions, only: [:new, :create, :destroy]
end
