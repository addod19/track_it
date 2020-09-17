Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :waters
  post '/signup', to: 'users#create'
  post '/signin', to: 'users#signin'
  get '/user_login', to: 'users#user_login'
end
