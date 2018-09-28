class CreateBottleDriftHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :bottle_drift_histories do |t|
      t.integer :bottle_id
      t.float :place_lat
      t.float :place_lng

      t.timestamps
    end
  end
end
