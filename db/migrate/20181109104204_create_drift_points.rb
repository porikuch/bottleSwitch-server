class CreateDriftPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :drift_points do |t|
      t.string :name, null: false
      t.float :place_lat, null: false
      t.float :place_lng, null: false

      t.timestamps
    end
  end
end
