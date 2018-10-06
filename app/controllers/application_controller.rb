class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from SecurityError do |exception|
    redirect_to root_url, notice: 'アドミン画面へのアクセスがありません'
  end

  protected

  def configure_permitted_parameters
    added_attrs = %i[name email password password_confirmation remember_me avatar]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def authenticate_admin_user!
    raise SecurityError unless current_user.try(:admin?)
  end
end
