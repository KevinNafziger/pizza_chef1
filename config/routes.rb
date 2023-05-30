Rails.application.routes.draw do
  get 'home/index'
  resources :toppings
  resources :pizzas

  root "home#index"
end
