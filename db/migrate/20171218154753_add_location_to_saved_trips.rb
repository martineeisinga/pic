class AddLocationToSavedTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :saved_trips, :location, :string
  end
end
