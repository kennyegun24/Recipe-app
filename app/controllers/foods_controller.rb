class FoodsController < ApplicationController
    def index
        @foods = Food.all
    end

    def new
        @food = Food.new
    end
    
    def create
      @food = Food.new(food_params)
      @food.user = current_user
      if @food.save
        flash[:notice] = 'food successfully created!'
        redirect_to root_path(current_user)
      else
        flash.now[:error] = 'Error: Error occurred when creating post'
        render :new
      end
    end

    def food_params
        params.permit(:name, :measuerment_unit, :price, :quantity)
    end
end