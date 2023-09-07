class RecipeFoodsController < ApplicationController
  def create
    recipe = Recipe.find_by(id: params[:recipe_id])
    params.permit!
    para = params[:name]
    food = Food.find_by(id: para)
    quantity = params[:food]
    unless RecipeFood.exists?(food: food)
      RecipeFood.create('quantity' => quantity['quantity'], 'recipe' => recipe, 'food' => food)
    end
    redirect_to "/recipes/#{params[:recipe_id]}"
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
