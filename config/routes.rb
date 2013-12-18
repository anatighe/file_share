FileShare::Application.routes.draw do
  resources :shipments, only: [:create]
  resources :packages

  match ':shipments/:token' => 'shipments#show', :via => :get

  root :to => "shipments#new"
end

