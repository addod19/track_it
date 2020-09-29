# frozen_string_literal: true

Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'water_levels/progress'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :waters

  post '/signup', to: 'users#create'
  post '/signin', to: 'users#signin'
  get '/auto_login', to: 'users#auto_login'
end
