class AddPhotoToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :photo, :string
  end
end
