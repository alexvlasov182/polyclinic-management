class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :phone, presence: true, uniqueness: true
  validates :full_name, presence: true

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
