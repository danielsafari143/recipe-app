class RecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    authorize! :read, @recipe
  rescue
    flash.now[:notice] = "You do not have the necessary permissions to view this page."
    render('recipes/error')
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    authorize! :destroy, @recipe
    @recipe.destroy
    redirect_to '/index'
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.public = !@recipe.public
    @recipe.save
  end
end
