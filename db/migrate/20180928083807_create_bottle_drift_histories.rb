class CreateBottleDriftHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :bottle_drift_histories do |t|
      t.integer :bottle_id, :null => false
      t.float :place_lat, :null => false
      t.float :place_lng, :null => false

      t.timestamps
    end
  end
end
