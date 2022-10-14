class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[show destroy]
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to(doctors_path)
    else
      render :new
    end
  end

  def show; end

  def destroy
    @doctor.destroy
    redirect_to(doctors_path)
  end

  private

  def doctor_params
    params.require(:doctor).permit(:first_name, :last_name, :city, :user_name, :password, :address, :primary_practice, :secondary_practice)
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
