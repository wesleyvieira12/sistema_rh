Rails.application.routes.draw do

  resources :empresas
  resources :psicologas
  resources :clients
  devise_for :users
  get 'painel/index'

  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
