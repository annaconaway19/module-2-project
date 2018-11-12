Rails.application.routes.draw do
  resources :flavors
  # resources :cocktail_ingredients
  # resources :likes
  resources :ingredients, only: [:index]
  resources :cocktails, only: [:index]
  resources :posts, except: [:edit, :update, :delete]
  resources :users, except: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
