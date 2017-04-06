Rails.application.routes.draw do
  devise_for :users

  resources :products
  resources :carts

  namespace :admin do 
    resources :products
    resources :carts
  end

  root to: 'product#index'
end
