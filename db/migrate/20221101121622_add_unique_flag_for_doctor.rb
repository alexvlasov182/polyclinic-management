class AddUniqueFlagForDoctor < ActiveRecord::Migration[7.0]
  def change
    add_index :doctors, :phone, unique: true
  end
end
