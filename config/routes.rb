Rails.application.routes.draw do

  resources :cad

  namespace :api do
    resources :jobs
    resources :cad
  end



end
