Rails.application.routes.draw do
  root 'films#index'

  resources :films

end
