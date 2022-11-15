class RemoveMainImageToDoctors < ActiveRecord::Migration[7.0]
  def change
    remove_column :doctors, :main_image
    remove_column :doctors, :thumb_image
  end
end
