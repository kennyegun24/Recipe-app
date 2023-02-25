# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'foods#index'
  # get "recipes", to: "recipes#index"
  # get 'recipes/:id', to: 'recipes#show'
  # get "public_recipes", to: 'public_recipes#index'
  # get 'general_shopping_lists', to: 'general_shopping#index'

  resources :foods, only: %i[new create destroy]
  resources :recipes, only: %i[index show new create destroy] do
    resources :recipe_foods, only: %i[new create destroy]
  end
  resources :public_recipes, only: %i[index show]
  resources :shopping_lists, only: [:index]
end
