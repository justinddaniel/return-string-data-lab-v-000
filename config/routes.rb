Rails.application.routes.draw do
  get 'home', to: 'static#home'
  root 'products#index'
  resources :products
  resources :orders
  resources :invoices
  get 'products/:id/body', to: 'products#body'
end
