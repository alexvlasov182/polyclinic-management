class RemoveFieldCategroyIdFromTableDoctors < ActiveRecord::Migration[7.0]
  def change
    remove_column :doctors, :category_id
  end
end
