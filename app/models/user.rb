class User < ApplicationRecord
    has_many :recipes, foreign_key: "user_id", class_name: "Recipe"
    has_many :foods, foreign_key: "user_id", class_name: "Food"
    
    validates :name, presence: true, length: { maximum: 100 }
end
