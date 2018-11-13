class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :post_id
      t.integer :count, :default => 0

      t.timestamps
    end
  end
end
