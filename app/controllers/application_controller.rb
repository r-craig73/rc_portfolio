class ApplicationController < ActionController::Base
  helper_method :current_user

  protect_from_forgery with: :exception
  helper_method :current_user

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password])
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :current_password, :email])
  end

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

end
