class RemoveMainImageToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :main_image
    remove_column :users, :thumb_image
  end
end
