class AddAffiliateLinkToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :link_hotel, :string
  end
end
