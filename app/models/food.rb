class Food < ApplicationRecord
    has_many :recipe_foods, foreign_key: 'food_id', class_name: 'RecipeFood'

    validates :name, presence: true, length: { maximum: 100 }
    validates :measuerment_unit, presence: true
    validates :price, presence: true
    validates :quantity, presence: true
end
