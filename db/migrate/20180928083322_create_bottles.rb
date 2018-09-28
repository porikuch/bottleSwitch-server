class CreateBottles < ActiveRecord::Migration[5.1]
  def change
    create_table :bottles do |t|
      t.string :title
      t.text :body
      t.integer :created_user_id

      t.timestamps
    end
  end
end
