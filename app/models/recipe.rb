class Recipe < ApplicationRecord
    has_many :recipe_foods, foreign_key: 'recipe_id', class_name: 'RecipeFood'

    validates :name, presence: true, length: { maximum: 250 }
    validates :description, presence: true, length: { maximum: 500 }
    validates :cooking_time, presence: true
    validates :preparation_time, presence: true
end
