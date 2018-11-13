class CreatePostFlavors < ActiveRecord::Migration[5.2]
  def change
    create_table :post_flavors do |t|
      t.integer :post_id
      t.integer :flavor_id

      t.timestamps
    end
  end
end
