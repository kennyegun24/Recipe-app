class FoodsController < ApplicationController
    def index
      @user = User.find(current_user.id)
        @foods = @user.foods
    end

    def new
        @food = Food.new
    end
    
    def create
      @food = Food.new(food_params)
      @food.user = current_user
      @food.user_id = current_user.id
      if @food.save
        flash[:notice] = 'food successfully created!'
        redirect_to root_path(current_user)
      else
        flash.now[:error] = 'Error: Error occurred when creating post'
        render :new
      end
    end

    def destroy
      @food = Food.find(params[:id])
      @food.destroy
      if @food.destroy
          redirect_to root_path(current_user)
      end
    end

    def food_params
        params.require(:new_food).permit(:name, :measuerment_unit, :price, :quantity)
    end
end