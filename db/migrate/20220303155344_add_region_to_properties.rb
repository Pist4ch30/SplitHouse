class AddRegionToProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :region, :string
  end
end
