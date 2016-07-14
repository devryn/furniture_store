Rails.application.routes.draw do
  get 'products', to: 'products#index'
  get 'products/:id', to: 'products#show'
  get 'categories', to: 'categories#index'
  get 'categories/:id', to: 'categories#show'

  root 'dashboard#index'
end
