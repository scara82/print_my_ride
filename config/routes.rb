Rails.application.routes.draw do

  get 'session/new', to: 'session#new'
  get 'session/destroy', to: 'session#destroy'

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  delete '/users', to: 'users#destroy'
  get '/users/home', to: 'users#home'

  get '/creators/user_type', to: 'creators#user_type'
  get '/creators/new', to: 'creators#new'
  post '/creators', to: 'creators#create'
  get '/creators/home', to: 'creators#home'

  get '/jobs/new', to: 'jobs#new'
  post '/jobs', to: 'jobs#create'

  resources :cads

  namespace :api do
    resources :jobs
    resources :cads
  end


  get '/', to: 'cads#index'


end
