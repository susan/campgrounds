class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.integer :park_id
    	t.string :credit1
    	t.string :alt_text1
    	t.string :title1
    	t.integer :id1
    	t.string :caption1
    	t.string :url1
    	t.string :credit2
    	t.string :alt_text2
    	t.string :title2
    	t.integer :id2
    	t.string :caption2
    	t.string :url2
      t.string :credit3
    	t.string :alt_text3
    	t.string :title3
    	t.integer :id3
    	t.string :caption3
    	t.string :url3
      t.string :credit4
    	t.string :alt_text4
    	t.string :title4
    	t.integer :id4
    	t.string :caption4
    	t.string :url4

      t.timestamps
    end
  end
end
