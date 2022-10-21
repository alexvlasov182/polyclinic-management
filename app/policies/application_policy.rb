# frozen_string_literal: true

# frozen_string_literal: true

class PatientPolicy
  attr_reader :user, :patient

  def initialize(user, patient)
    @user = user
    @patient = patient
  end

  def edit?
    patient_belongs_to_user?
  end

  def update?
    patient_belongs_to_user?
  end

  def destroy?
    patient_belongs_to_user?
  end

  private

  def patient_belongs_to_user?
    user == patient.user
  end
end
