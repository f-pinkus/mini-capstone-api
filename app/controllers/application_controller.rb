class ApplicationController < ActionController::Base
  allow_browser versions: :modern
  protect_from_forgery with: :exception, unless: -> { request.format.json? }

  skip_before_action :verify_authenticity_token

  helper_method :current_user

  def current_user
    User.find_by(id: cookies.signed[:user_id])
  end

  def authenticate_user
    unless current_user
      render json: {}, status: :unauthorized
    end
  end

  def authenticate_admin
    unless current_user && current_user.admin
      render json: {}, status: :unauthorized
    end
  end
end
