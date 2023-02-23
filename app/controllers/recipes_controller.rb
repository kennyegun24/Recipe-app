class RecipesController < ApplicationController
    def index
        @user = User.find(current_user.id)
        @recipes = @user.recipes
    end

    def show
        @recipe = Recipe.includes(:recipe_foods).find(params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def create
    end

    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
    end
end