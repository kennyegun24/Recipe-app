require 'rails_helper'
RSpec.describe User, type: :model do
     before :each do
      @user = User.new(id: 1, name: 'Kenny')
      @food = Food.new(id: 1, user: @user, price: 1, quantity: 1, name: 'Random', measuerment_unit: 1 )
      @recipe = Recipe.new(id: 1, user: @user, cooking_time: '1hr:45mins', name: 'Rice and Beans', preparation_time: '2hrs', description: 'This is the best meal ever')
      @recipe_foods = RecipeFood.new(id: 1, food: @food, recipe: @recipe, quantity: 2)
     end

     it '' do
        @recipe_foods.quantity = nil
        expect(@recipe_foods).to_not be_valid
     end
end