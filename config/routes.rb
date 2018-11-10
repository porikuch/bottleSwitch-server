Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :bottles
  resources :logins
  resources :release_bottle
  resources :receive_bottle
end
