# frozen_string_literal: true
Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  # get '/chef_menus/:id', to: 'menu_days#retrieve_menu_day'
  # get '/chef_menus', to: 'chef_menus#index'
  get '/menus/:id', to: 'menus#show'
  get '/menus', to: 'menus#index'

  post '/menus/:menu_id/orders', to: 'orders#create'
  put '/menus/:menu_id', to: 'menus#update'

  get '/chefs', to: 'chefs#index'

  get '/orders', to: 'orders#index'
  delete '/orders/:id', to: 'orders#destroy'
end
