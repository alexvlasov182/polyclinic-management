class UsersController < ApplicationController
  before_action :authenticate_doctor!
  def index
    @user = current_user
  end

  def show
    @user = current_user
  end
end