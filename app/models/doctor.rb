class Doctor < ApplicationRecord
  has_many :users

  validates :first_name, :last_name, :city, :user_name, :password, :address, :primary_practice, :secondary_practice, presence: true
end
