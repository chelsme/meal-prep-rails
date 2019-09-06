class ChangeRecipeIngredientsToIngredients < ActiveRecord::Migration[6.0]
  def change
    rename_table :recipe_ingredients, :ingredients
  end
end
