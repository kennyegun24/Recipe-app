# frozen_string_literal: true

class RecipeFood < ApplicationRecord
  belongs_to :food, class_name: 'Food'
  belongs_to :recipe, class_name: 'Recipe'
  validates :quantity, presence: true
end
