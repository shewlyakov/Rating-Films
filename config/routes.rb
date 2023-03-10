Rails.application.routes.draw do
  root 'films#index'

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :films, only: [:index, :show] do
    get '/page/:page', action: :index, on: :collection
  end

  resources :categories, only: [:index, :show] do
    get '/page/:page', action: :show, on: :collection
  end

  resources :reviews
end
