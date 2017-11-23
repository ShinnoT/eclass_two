class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_both!
  # before_action :authenticate_user!
  # before_action :authenticate_teacher!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    # devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def after_sign_in_path_for(resource)
    courses_path
  end

  def after_sign_up_path_for(resource)
    courses_path
  end

  private

  def authenticate_both!
    if user_signed_in? || teacher_signed_in?
      true
    else
      authenticate_user! || authenticate_teacher!
    end
  end
end
