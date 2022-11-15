class PrescriptionsController < ApplicationController

  def index
    @user = current_doctor
    @appointments = @user.appointments
    appointment_ids = @appointments.map(&:id)
    @prescription = Prescription.where(appointment_ids: appointment_ids)
  end

  def show
    @user = current_doctor || current_user
    @prescription = Prescription.find(params[:id])
    @appointment = Appointment.find(@prescription.appointment_id)
  end

  def new
    @user = current_doctor
    @appointment = Appointment.find_by(id: params[:appointment_id])
    @prescription = Prescription.new
  end

  def create
    @user = current_doctor || current_user
    @appointment = Appointment.find_by(id: params[:appointment_id])
    @prescription = Prescription.new(prescription_params)

    if @prescription.save
      redirect_to prescriptions_path
      flash.now[:notice] = 'Your prescription was successfully created'
    else
      render :new, alert: 'An error has occurred while creating a prescription'
    end
  end

  private

  def prescription_params
    params.require(:prescription).permit(:prescript, :appointment_id)
  end

end
