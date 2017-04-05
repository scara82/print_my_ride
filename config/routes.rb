Rails.application.routes.draw do

  get '/users/new', to: 'users#new'
  post '/users', to: 'userss#create'
  delete '/users', to: 'users#destroy'


end
