class FoodsController < ApplicationController
    before_action :authenticate_user!

    def new
        @food = Recipe.find_by(id: params[:recipe_id]).foods.first
        authorize! :new , @food
        @recipe = Recipe.find_by(id: params[:recipe_id])
    rescue
        flash.now[:notice] = "You do not have the necessary permissions to add new ingredients."
        render('recipes/error')
    end

    def create
      puts params
    end
end
