class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :chapter_id])
    # binding.pry
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :chapter_id])
    # devise_parameter_sanitizer.for(:sign_up) << :chapter_id
  end


end
