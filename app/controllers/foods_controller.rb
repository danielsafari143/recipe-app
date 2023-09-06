class FoodsController < ApplicationController
  before_action :authenticate_user!
  def index
    @foods = current_user.foods.all
  end

  def new
    @foods = current_user.foods.all
  end

  def create
    para = params[:food]
    Food.create('name' => para['name'], 'measurement_unit' => para['measurement_unit'],
                'price' => para['price'], 'quantity' => para['quantity'], 'user' => current_user)
    redirect_to '/foods'
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    authorize! :destroy, @recipe
    @recipe.destroy
    redirect_to '/index'
  end

  def show; end
end
