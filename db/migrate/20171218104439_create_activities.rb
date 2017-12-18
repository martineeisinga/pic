class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :trip_type
      t.string :name
      t.string :photo
      t.string :description
      t.references :trip, foreign_key: true, index: true

      t.timestamps
    end
  end
end
