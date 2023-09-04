class Recipe < ApplicationRecord
    validates :name , presence:true , length: {minmum:2 , maximun: 50}
    validates :preperation_time  , presence: true
    validates :cooking_time , presence: true
    validates :public, inclusion: [true, false]
    validates :public, exclusion: [nil]
end
