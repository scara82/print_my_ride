Rails.application.routes.draw do

  get '/', to: '/api/cads#index'

  get 'session/new', to: 'session#new'
  get 'session/destroy', to: 'session#destroy'


  get 'session/new'
  get 'session/destroy'

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  delete '/users', to: 'users#destroy'
  get '/users/home', to: 'users#home'

  get '/creators/user_type', to: 'creators#new'
  post '/creators', to: 'creators#create'
  get '/creators/home', to: 'creators#home'

  resources :cads

  namespace :api do
    resources :jobs
    resources :cads
  end


end
