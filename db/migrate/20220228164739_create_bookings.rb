class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :finish_date
      t.date :start_date
      t.integer :duration
      t.references :property
      t.references :user

      t.timestamps
    end
  end
end
