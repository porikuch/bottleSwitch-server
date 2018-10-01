class CreateBottles < ActiveRecord::Migration[5.1]
  def change
    create_table :bottles do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :created_user_id, null: false

      t.timestamps
    end
  end
end
