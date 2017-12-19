class AddHotelNameToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :hotel_name, :string
  end
end
