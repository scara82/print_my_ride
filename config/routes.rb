Rails.application.routes.draw do

  resources :cad

  namespace :api do
    resources :jobs
    resources :cad
  end

  get '/users/new', to: 'users#new'
  post '/users', to: 'userss#create'
  delete '/users', to: 'users#destroy'


end
