class CreateCampgrounds < ActiveRecord::Migration[5.2]
  def change
    create_table :campgrounds do |t|
      t.integer :park_id
      t.text :directions_overview
      t.string :name
      t.text :description
      t.boolean :cell_phone_reception
      t.boolean :showers

      t.timestamps
    end
  end
end
