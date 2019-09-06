Rails.application.routes.draw do
  resources :shopping_lists
  resources :groceries
  resources :users
  resources :ingredients
  resources :recipes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
