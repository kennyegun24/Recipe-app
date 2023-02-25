class Food < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :recipe_foods, foreign_key: 'food_id', class_name: 'RecipeFood'

  validates :name, presence: true, length: { maximum: 100 }
  validates :measuerment_unit, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :quantity, :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
