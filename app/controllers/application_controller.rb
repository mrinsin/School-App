class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation, :first_name, :last_name, :date_of_birth, :university, :graduation_year, :degree, :concentration, :portfolio, :image) }

      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :password_confirmation, :current_password, :first_name, :last_name, :date_of_birth, :university, :graduation_year, :degree, :concentration, :portfolio, :image) }

      devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password) }
    end

  #   def configure_permitted_parameters
  #      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password,  :first_name, :last_name, :date_of_birth, :university, :graduation_year, :degree, :concentration, :portfolio) }
  #  end
end
