class UsersController < ApplicationController
  before_action :set_user, only: %i[show destroy]
  def index
    @users = User.all

    @u1 = User.find(1)
    @u2 = User.find(2)
    @u3 = User.find(3)
    @u6 = User.find(6)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to(users_path)
    else
      render :new
    end
  end

  def show; end

  def destroy
    @user.destroy
    redirect_to(users_path)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
