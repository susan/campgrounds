class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :states
      t.string :lat_long
      t.text :description
      t.string :designation
      t.string :park_code
      t.text :directions_info
      t.string :directions_url
      t.string :full_name
      t.string :url
      t.text :weather_info
      t.string :name
      t.integer :vehicle_fee
      t.string :img1_url
      t.boolean :is_editable

      t.timestamps
    end
  end
end
