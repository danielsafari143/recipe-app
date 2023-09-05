class FoodsController < ApplicationController
  before_action :authenticate_user!
  def index
    @foods = Food.all
  end

  def new
    @food = Recipe.find_by(id: params[:recipe_id])
    authorize! :new, @food
    @recipe = Recipe.find_by(id: params[:recipe_id])
  rescue StandardError
    flash.now[:notice] = 'You do not have the necessary permissions to add new ingredients.'
    render('recipes/error')
  end
end
