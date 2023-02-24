require 'rails_helper'
RSpec.describe User, type: :model do
      before :each do
        @user = User.new(id: 1, name: 'Kenny')
        @food = Food.new(id: 1, user: @user, price: 1, quantity: 1, name: 'Random', measuerment_unit: 1 )
        @recipe = Recipe.new(id: 1, user: @user, cooking_time: '1hr:45mins', name: 'Rice and Beans', preparation_time: '2hrs', description: 'This is the best meal ever')
      end
    
      it 'name must not be blank' do
        @recipe.name = nil
        expect(@recipe).to_not be_valid
      end
    
      it 'recipe bio to match' do
        @recipe.cooking_time = '1hr:45mins'
        expect(@recipe).to be_valid
      end
    
      it 'Check if postscounter is an integer' do
        @recipe.preparation_time = '2hrs'
        expect(@recipe).to be_valid
      end
    
      it 'Check if postscounter is an integer' do
        @recipe.preparation_time = nil
        expect(@recipe).to_not be_valid
      end
    