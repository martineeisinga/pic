class AddCurrentLocationToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :current_location, :string
  end
end
