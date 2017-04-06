Rails.application.routes.draw do
  get 'session/new'
  get 'session/destroy'

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  delete '/users', to: 'users#destroy'

  get '/creators/user_type', to: 'creators#new'
  post '/creators', to: 'creators#create'

  root '/pages#home'

  resources :cads

  namespace :api do
    resources :jobs
    resources :cads
  end

  get '/', to: 'pages#home'
end
