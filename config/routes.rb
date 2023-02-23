Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "foods#index"
  # get "recipes", to: "recipes#index"
  # get 'recipes/:id', to: 'recipes#show'
  # get "public_recipes", to: 'public_recipes#index'
  # get 'general_shopping_lists', to: 'general_shopping#index'

  resources :foods, only: [:new, :create]
  resources :recipes, only: [:index, :show, :new, :create]
  resources :public_recipes, only: [:index]
  resources :likes, only: [:create]
  
end
