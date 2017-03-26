Rails.application.routes.draw do
  get 'reports/index'
  get 'orders/create'
  get 'logins/index'
  get 'reports/show'
  get 'requests/kitchen_show'
  #get 'requests/refresh_kitchen'
  get 'requests/kitchen'
  get 'requests/checkout'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :products
  resources :categories
  resources :requests do
    get 'close_table'
    resources :products do

      resources :orders, only: [:create]

    end
  end

  resources :orders, only: [:destroy]

  resources :tables
  resources :users


  root 'requests#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
