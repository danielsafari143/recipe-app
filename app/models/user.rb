class User < ApplicationRecord
  has_many :foods
  has_may :recipes

  validates :name, presence: true, length: { maximun: 50 }
end
