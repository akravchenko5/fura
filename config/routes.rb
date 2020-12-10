Rails.application.routes.draw do
  resources :cargos
  devise_for :users
  root 'home#index'
end
