class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :cocktail_id
      t.string :keywords

      t.timestamps
    end
  end
end
