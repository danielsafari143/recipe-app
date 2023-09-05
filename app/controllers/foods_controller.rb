class FoodsController < ApplicationController
    before_action :authenticate_user!

    def new
        @food = Recipe.find_by(id: params[:recipe_id]).foods
        puts "================#{can? :read , @foods}"
    end
end
