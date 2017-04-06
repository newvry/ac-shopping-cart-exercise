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

  root to: 'product#index'
end
