class AddThumbImageToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :thumb_image, :text
  end
end
