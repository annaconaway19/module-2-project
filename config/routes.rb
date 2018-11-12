Rails.application.routes.draw do
  resources :cocktail_ingredients
  resources :likes
  resources :ingredients
  resources :cocktails
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
