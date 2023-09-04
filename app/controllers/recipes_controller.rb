class RecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipes = Recipe.all
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    authorize! :destroy, @recipe
    @recipe.destroy
    redirect_to '/index'
  end
end
