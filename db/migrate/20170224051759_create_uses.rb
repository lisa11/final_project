class CreateUses < ActiveRecord::Migration
  def change
    create_table :uses do |t|
      t.integer :purchase_id
      t.date :date
      t.integer :user_id

      t.timestamps

    end
  end
end
