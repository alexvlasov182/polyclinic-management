class Patient < ApplicationRecord
  attr_accessor :password

  has_many :appointments
  has_many :doctors, through: :appointments, dependent: :destroy

  validates :first_name, :last_name, :city, :password, :address, :email, presence: true
end