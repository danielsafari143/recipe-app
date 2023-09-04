class User < ApplicationRecord
    has_many :food
    has_many :recipe
    
    validates :name , presence:true , length:{maximun: 50} 
end
