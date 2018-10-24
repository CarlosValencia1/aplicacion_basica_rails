Rails.application.routes.draw do
  resources :reg_ordens
  resources :ordens
  resources :productos
  resources :clientes
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
  get '/saludo', :to => 'home#saludo'
end
