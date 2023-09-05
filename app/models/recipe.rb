class Recipe < ApplicationRecord
  has_many :recipe_foods
  belongs_to :user, class_name: 'User'
  has_many :foods, through: :recipe_foods

  validates :name, presence: true
  validates :preperation_time, presence: true # Corrected attribute name
  validates :cooking_time, presence: true
  validates :public, inclusion: { in: [true, false] }
  validates :public, exclusion: { in: [nil] }
end
