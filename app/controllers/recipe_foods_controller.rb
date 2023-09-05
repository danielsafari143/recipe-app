class RecipeFoodsController < ApplicationController
    def create
        recipe = Recipe.find_by(id:params[:recipe_id] )
        params.permit!
        para = params[:food]
        food = Food.create( "name"=> para["name"] , "measurement_unit"=> para["measurement_unit"], "price"=>para["price"], "quantity"=> para["quantity"], "user" => current_user)
        RecipeFood.create("quantity" => food.quantity , "recipe" => recipe , "food" => food)

        redirect_to "/recipes/#{params[:recipe_id]}"
    end
end
