class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :author_id
      t.integer :cocktail_id
      t.string :image_url

      t.timestamps
    end
  end
end
