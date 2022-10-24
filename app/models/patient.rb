class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments, dependent: :destroy

  validates :first_name, :last_name, :city, :password, :address, :email, presence: true

  accepts_nested_attributes_for :doctors

  paginates_per 5
end
