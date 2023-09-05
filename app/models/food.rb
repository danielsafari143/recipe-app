class Food < ApplicationRecord
  has_many :recipe_foods
  belongs_to :author, foreign_key: 'user_id', class_name: 'User'

  validates :name, presence: true
  validates :measurement_unit, presence: true
  validates :price, numericality: { only_integer: true }
  validates :quantity, numericality: { only_integer: true }
end
