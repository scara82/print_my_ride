Rails.application.routes.draw do
  get 'session/new', to: 'session#new'
  get 'session/destroy', to: 'session#destroy'


  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  delete '/users', to: 'users#destroy'

  get '/users/user_type', to: 'users#user_type_new'
  post '/users', to: 'users#creator'

  resources :cads

  namespace :api do
    resources :jobs
    resources :cads
  end

  get '/', to: 'pages#home'

end
