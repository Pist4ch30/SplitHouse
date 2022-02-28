class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :title
      t.integer :price_part
      t.integer :home_size
      t.integer :nbr_room
      t.integer :nbr_bathroom
      t.string :address
      t.text :detail
      t.boolean :pool
      t.boolean :garden
      t.boolean :parking
      t.boolean :garage
      t.boolean :summer_kitchen
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
