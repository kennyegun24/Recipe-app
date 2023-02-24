# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :recipes, foreign_key: 'user_id', class_name: 'Recipe'
  has_many :foods, foreign_key: 'user_id', class_name: 'Food'

  validates :name, presence: true, length: { maximum: 100 }
end
