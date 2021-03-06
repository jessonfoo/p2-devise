class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit! }
    devise_parameter_sanitizer.for(:sign_out) { |u| u.permit! }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  end
  # def self.helper_method(*args)
  # end
  # def self.hide_action(*args)
  # end
end
