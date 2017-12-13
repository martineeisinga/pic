class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.date :check_in
      t.date :check_out
      t.integer :guests
      t.references :trip, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
