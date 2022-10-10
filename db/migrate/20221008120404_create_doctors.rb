class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :user_name
      t.string :password
      t.string :address
      t.string :primary_practice
      t.string :secondary_practice

      t.timestamps
    end
  end
end
