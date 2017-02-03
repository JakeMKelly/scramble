Rails.application.routes.draw do

  resources :trips, only: [:new, :show, :index, :create]
  get '/get_pings' => 'trips#get_pings', defaults: { format: 'json' }

  devise_for :users, controllers: { registrations: 'users/registrations' }

  get '/users/:id', to: 'users#show', as: 'user'

  root 'trips#index'


end
