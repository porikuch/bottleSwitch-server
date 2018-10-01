class CreateHaveBottles < ActiveRecord::Migration[5.1]
  def change
    create_table :have_bottles do |t|
      t.integer :user_id, null: false
      t.integer :bottle_id, null: false

      t.timestamps
    end
  end
end
