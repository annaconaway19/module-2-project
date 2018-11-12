class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :cocktail_id
      t.string :quantity

      t.timestamps
    end
  end
end
