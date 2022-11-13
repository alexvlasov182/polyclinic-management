class DoctorsController < ApplicationController
  before_action :authenticate_doctor!

  def index
    @doctor = current_doctor
  end

  def show
    @users = User.all
    @appointments = Appointment.where(doctor_id: current_doctor.id)
    @prescriptions = Prescription.where(appointments_id: current_doctor.id)
  end
end
