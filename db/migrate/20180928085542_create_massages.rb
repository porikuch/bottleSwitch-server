class CreateMassages < ActiveRecord::Migration[5.1]
  def change
    create_table :massages do |t|
      t.integer :friend_id, null: false
      t.text :message, null: false

      t.timestamps
    end
  end
end
