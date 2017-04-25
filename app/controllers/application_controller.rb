class ApplicationController < ActionController::Base
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  before_action :authenticate_user!
  before_action :authenticate_influencer!

  def pundit_user
    current_user || current_influencer
  end

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :mobile, :address, :instagram, :youtube, :social_media, :password, :remember_me) }
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :email, :mobile, :address, :instagram, :youtube, :social_media, :password, :current_password, :remember_me) }
  end

  def user_not_authorized
    redirect_to("/photographs")
    flash[:warning] = "You are not authorized to perform this action."
  end

  def authorize_admin
    # redirect_to '/', status: 401 unless current_user.admin?
  end
end
