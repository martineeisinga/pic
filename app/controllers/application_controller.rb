class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :whitelist_user_params, if: :devise_controller?


  def whitelist_user_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :photo])
  end

end
