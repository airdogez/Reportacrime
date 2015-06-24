class ApplicationController < ActionController::Base
  respond_to :html, :json
  before_action :set_user
  before_filter :update_sanitized_params, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :lastname, :phone, :email, :password, :password_confirmation, :token)}
  end
  private
  def set_user
    if current_user
      @user = current_user
    else
      @user = User.new
    end
  end
end
