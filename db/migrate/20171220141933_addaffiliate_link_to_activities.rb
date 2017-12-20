class AddaffiliateLinkToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :link_activity, :string
  end
end
