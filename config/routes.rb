# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  get 'water_levels/progress'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :waters, except: [:index]

  get '/allData', to: 'waters#index'

  post '/signup', to: 'users#create'
  post 'auth/signin', to: 'authentication#authenticate'
end
