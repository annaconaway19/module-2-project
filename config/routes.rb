Rails.application.routes.draw do
  resources :post_flavors
  resources :flavors
  # resources :cocktail_ingredients
  # resources :likes
  resources :ingredients, only: [:index]
  resources :cocktails, only: [:index, :show]
  resources :posts, except: [:edit, :update]
  resources :users, only: [:new, :create, :show, :update, :destroy]
  resources :likes, only: [:create, :destroy]

  resources :posts do
    resources :likes
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete'/logout', to: 'sessions#destroy', as: 'logout'
  get '/users/new', to: 'users#new', as: 'signup'
  get '/users/:id/account', to: 'users#edit', as: 'account'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  get "*path", to: 'application#redirect_bad_route'

end
