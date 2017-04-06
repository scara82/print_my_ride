Rails.application.routes.draw do
  get 'session/new'
  get 'session/destroy'
<<<<<<< HEAD
=======


>>>>>>> 55c134faf22eb13162152cdeb30420901f0c07a2

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
<<<<<<< HEAD
=======
  
>>>>>>> 55c134faf22eb13162152cdeb30420901f0c07a2
end
