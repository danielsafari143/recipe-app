class Food < ApplicationRecord
    has_many :recipe_food
    belongs_to :user

    validates :name, presence: true, length: { minmum: 2, maximun: 50 }
    validates :measurement_unit, presence: true
    validates :price , numericality: {only_integer: true}
    validates :quantity , numericality: {only_integer: true}
end
