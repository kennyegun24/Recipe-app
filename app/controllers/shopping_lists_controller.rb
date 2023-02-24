class ShoppingListsController < ApplicationController
    def index
        @recipe_foods = RecipeFood.includes(:food, :recipe)
        @missing = @recipe_foods.select{|i| i.quantity > i.food.quantity}
        @missing_i = @missing.map do |item|
            {
                name: item.food.name,
                quantity: item.quantity - item.food.quantity,
                price: item.food.price * (item.quantity - item.food.quantity)
            }
        end
        @total = @missing_i.map {|item| item[:price]}.sum
    end
end