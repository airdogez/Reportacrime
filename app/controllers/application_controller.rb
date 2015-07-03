class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  respond_to :html, :json
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_filter :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation) }
  end
  private
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end 
  
  def require_login
    unless current_user
      redirect_to "/auth/sign_up"
    end
  end
end
