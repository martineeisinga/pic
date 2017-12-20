class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :activities, :trip_type, :activity_type
  end
end
