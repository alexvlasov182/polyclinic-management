class Doctor < ApplicationRecord
  has_many :appointments
  has_many :users, through: :appointments, dependent: :destroy

  validates :first_name, :last_name, :city, :user_name, :password, :address, :primary_practice, :secondary_practice, presence: true
end
