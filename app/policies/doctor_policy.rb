# frozen_string_literal: true

class DoctorPolicy
  attr_reader :user, :doctor

  def initialize(user, doctor)
    @user = user
    @doctor = doctor
  end

  def edit?
    doctor_belongs_to_user?
  end

  def update?
    doctor_belongs_to_user?
  end

  def destroy?
    doctor_belongs_to_user?
  end

  private

  def doctor_belongs_to_user?
    user == doctor.user
  end
end
