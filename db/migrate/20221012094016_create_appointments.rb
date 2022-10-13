class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date

      t.belongs_to :doctor, index: true
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
