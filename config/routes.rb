Rails.application.routes.draw do
  get 'products', to: 'products#index'
  get 'products/:id', to: 'products#show'

  root 'products#index'
end
