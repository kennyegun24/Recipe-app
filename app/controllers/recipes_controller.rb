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
        @recipe = Recipe.new(recipe_params)
      @recipe.user = current_user
    #   @recipe.user_id = current_user.id
      if @recipe.save
        flash[:notice] = 'recipe successfully created!'
        redirect_to recipes_path(current_user)
      else
        flash.now[:error] = 'Error: Error occurred when creating post'
        render :new
      end
    end

    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
        if @recipe.destroy
            redirect_to recipes_path(current_user)
        else
            render :new
        end
    end

    def recipe_params
        params.require(:new_food).permit(:name, :preparation_time, :public, :description, :cooking_time)
    end
end