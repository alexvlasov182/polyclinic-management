class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments, dependent: :destroy

  validates :first_name, :last_name, presence: true

  paginates_per 5
end
