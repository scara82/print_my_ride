Rails.application.routes.draw do
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  delete '/users', to: 'users#destroy'

  get '/users/user_type', to: 'users#user_type_new'
  post '/users', to: 'users#creator'

  resources :cad

  namespace :api do
    resources :jobs
    resources :cad
  end
end
