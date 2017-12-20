class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :whitelist_user_params, if: :devise_controller?


  def whitelist_user_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :photo, :photo_cache])
  end

 protected
    def after_sign_in_path_for(resource)
      request.env['omniauth.origin'] || stored_location_for(resource) || home_path
    end
end
