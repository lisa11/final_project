class CreateUsages < ActiveRecord::Migration
  def change
    create_table :usages do |t|
      t.integer :favorite_id
      t.date :date

      t.timestamps

    end
  end
end
