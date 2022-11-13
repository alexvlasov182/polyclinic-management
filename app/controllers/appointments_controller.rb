class AppointmentsController < ApplicationController
  before_action :authenticate_user!, only: %i[create destroy]

  def index
    @user = current_user || current_doctor
    @appointments = @user.appointments
    @appointments = @user.appointments.find_by(params[:id])
    if @appointments.blank?
      nil
    else
      @prescription = @appointments.prescription
    end
  end

  def show
    @user = current_user
    @prescription = Prescription.find_by(params[:appointment_id])
    @appointment = Appointment.find(params[:id])
  end

  def new
    @user = current_user
    doctor = Doctor.find_by(id: params[:doctor_id])
    @appointment = current_user.appointments.new(doctor: doctor)
  end

  def create; end

  def destroy; end

  private

  def appointment_params
    params.require(:appointment).permit(:appointment_date, :doctor_id, :user_id)
  end
end
