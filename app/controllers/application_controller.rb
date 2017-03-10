class ApplicationController < ActionController::Base
  
  include Pundit

  protect_from_forgery with: :exception
  # Devise
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    update_attrs = [:current_password, :kind, :email, :password, :password_confirmation]
    devise_parameter_sanitizer.permit :account_update, keys: update_attrs
    devise_parameter_sanitizer.permit :sign_up, keys: update_attrs
    

  end

  def after_sign_in_path_for(resource)
  	painel_index_path
  end

end
