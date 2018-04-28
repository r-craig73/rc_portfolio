class ApplicationController < ActionController::Base
  helper_method :current_user

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password])
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :current_password, :email])
  end

end
