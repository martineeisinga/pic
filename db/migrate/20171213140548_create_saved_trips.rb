class CreateSavedTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :saved_trips do |t|
      t.references :user, foreign_key: true
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
