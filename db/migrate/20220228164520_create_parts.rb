class CreateParts < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.integer :status
      t.integer :nbr_part
      t.integer :total_amount
      t.integer :days_allowed
      t.references :property
      t.references :user

      t.timestamps
    end
  end
end
