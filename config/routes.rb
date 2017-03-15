Rails.application.routes.draw do

  resources :psicologapacotes
  resources :clientepacotes
  resources :cliente_pacotes
  resources :add_empresa_id_to_pacotes
  resources :pacotes
  resources :tipo_pacotes
  resources :mensagems
  resources :contatos
  resources :empresas
  resources :psicologas
  resources :clients
  resources :users

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  },:path => 'u'

  get 'painel/index'

  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
