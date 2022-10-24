class PatientsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create update edit destroy]
  before_action :set_patient, only: %i[show destroy update edit]

  def index
    @patients = Patient.page(params[:page])
  end

  def show; end

  def new
    @patient = Patient.new
  end

  def edit
    # authorize @patient
  end

  def create
    @patient = Patient.new(patient_params)
    # @patient.user = current_user
    if @patient.save
      redirect_to(patients_path)
    else
      render :new
    end
  end

  def update
    if @patient.update(patient_params)
      redirect_to(patients_path(@patient))
    else
      render :edit
    end
  end

  def destroy
    @patient.destroy
    redirect_to(patients_path)
  end

  private

  def patient_params
    params.require(:patient).permit(
        :first_name,
        :last_name,
        :email,
        :city,
        :address,
        :password,
        doctors_attributes: [
          :id,
          :first_name,
          :last_name,
          :city,
          :address,
          :password,
          :primary_practice,
          :secondary_practice,
          :_destroy,
        ],
      )
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
