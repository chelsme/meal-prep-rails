class CreateRecipeIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_ingredients do |t|
      t.string :name
      t.belongs_to :recipe, null: false, foreign_key: true
      t.string :amount

      t.timestamps
    end
  end
end
