class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:full_name, :email, :phone, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:full_name, :phone, :email, :password, :current_password)
    end
  end

  def after_sign_in_path_for(resource)
    case resource
    when Doctor
      doctors_path
    when User
      users_path
    end
  end
end
