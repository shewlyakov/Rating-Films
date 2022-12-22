Rails.application.routes.draw do
  root 'films#index'

  resources :films, only: [:index, :show]
  devise_for :users
end
