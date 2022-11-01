class DoctorsController < ApplicationController
  before_action :authenticate_doctor!

  def index
    @doctor = current_doctor
  end

  def show; end
end
