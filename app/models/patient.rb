class Patient < ApplicationRecord
  attr_accessor :password

  has_many :appointments
  has_many :doctors, through: :appointments, dependent: :destroy

  validates :first_name, :last_name, :city, :address, :email, presence: true

  paginates_per 5
end
