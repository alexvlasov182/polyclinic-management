class DoctorsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create update edit destroy]
  before_action :set_doctor, only: %i[show destroy update edit]

  # TODO try to add two doctors

  def index
    @doctors = Doctor.page(params[:page])
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    # @doctor.user = current_user
    if @doctor.save
      redirect_to(doctors_path)
    else
      render :new
    end
  end

  def show; end

  def edit
    #authorize @doctor
  end

  def update
    if @doctor.update(doctor_params)
      redirect_to(doctors_path(@doctor))
    else
      render :edit
    end
  end

  def destroy
    @doctor.destroy
    redirect_to(doctors_path)
  end

  private

  def doctor_params
    params.require(:doctor).permit(:first_name, :last_name, :city, :address, :primary_practice, :secondary_practice, :password, patients_attributes: [:id,:first_name, :last_name, :city, :address, :email, :password, :_destroy])
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
