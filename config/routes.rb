Rails.application.routes.draw do

  resources :cads

  namespace :api do
    resources :jobs
    resources :cads
  end

  get '/users/new', to: 'users#new'
  post '/users', to: 'userss#create'
  delete '/users', to: 'users#destroy'


end
