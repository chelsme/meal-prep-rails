class CreateGroceries < ActiveRecord::Migration[6.0]
  def change
    create_table :groceries do |t|
      t.string :name
      t.string :quantity
      t.belongs_to :shopping_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
