class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :rating
      t.text :note

      t.timestamps

    end
  end
end
