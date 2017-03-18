Rails.application.routes.draw do
  get 'orders/create'

  get 'logins/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :products
  resources :categories
  resources :requests
  resources :tables
  resources :users

  root 'logins#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
