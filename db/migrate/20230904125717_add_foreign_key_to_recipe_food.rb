class AddForeignKeyToRecipeFood < ActiveRecord::Migration[7.0]
  def change
    add_reference :recipe_foods , :user , foreign_key: { to_table: :users , column: :user_id }
    add_reference :recipe_foods , :food , foreign_key: { to_table: :foods , column: :food_id }
  end
end
