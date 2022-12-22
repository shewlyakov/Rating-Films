Rails.application.routes.draw do
  root 'films#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :films, only: [:index, :show]
  devise_for :users
end
