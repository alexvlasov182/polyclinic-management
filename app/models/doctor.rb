class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments, dependent: :destroy

  validates :first_name, :last_name, :city, :password, :address, :primary_practice, :secondary_practice, presence: true

  paginates_per 5
end
