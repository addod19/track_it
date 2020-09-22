# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :waters
  get 'waters/index'
  post 'waters/create'
  get '/show/:id', to: 'waters#show'
  put '/update/:id', to: 'waters#update'
  delete '/destroy/:id', to: 'waters#destroy'
  get 'waters/water_level_progress'
  
  post '/signup', to: 'users#create'
  post '/signin', to: 'users#signin'
  get '/auto_login', to: 'users#auto_login'
end
