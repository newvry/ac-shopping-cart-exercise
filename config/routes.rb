Rails.application.routes.draw do
  devise_for :users

  resources :products
  resources :carts
  resources :orders

  namespace :admin do
    resources :products
    resources :carts
    resources :orders
  end

  root to: 'products#index'

  scope path: 'api/v1/', module: 'api_v1', as: 'v1', defaults: { format: :json } do
    resources :products
  end
    
  
end
