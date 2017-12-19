class AddCoordinatesToSavedTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :saved_trips, :latitude, :float
    add_column :saved_trips, :longitude, :float
  end
end
