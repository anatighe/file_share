FileShare::Application.routes.draw do
  resources :deliveries
  resources :packages

  root :to => "deliveries#new"
end

