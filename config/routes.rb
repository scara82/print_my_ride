Rails.application.routes.draw do
  get 'session/new', to: 'session#new'
  get 'session/destroy', to: 'session#destroy'


  get 'session/new'
  get 'session/destroy'

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  delete '/users', to: 'users#destroy'

  get '/creators/user_type', to: 'creators#new'
  post '/creators', to: 'creators#create'

  resources :cads

  namespace :api do
    resources :jobs
    resources :cads
  end

  get '/', to: 'pages#home'

end
