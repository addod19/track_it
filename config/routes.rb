# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'water_levels/progress'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :waters

  get '/progress', to: 'water_levels#progress'

  post '/signup', to: 'users#create'
  post '/signin', to: 'users#signin'
  get '/auto_login', to: 'users#auto_login'
end
