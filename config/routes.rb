class ApiDomain 
  def matches?(request)
    request.host == 'api.localhost'
  end
end

Rails.application.routes.draw do
  scope path: '', module: 'api_v1', as: 'v1', 
        defaults: { format: :json }, constraints: ApiDomain.new do
    resources :products
  end

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
end
