class ApplicationController < ActionController::Base
  before_action :authenticate

  helper_method :current_user
    private

  # Make the current_user method available to views, not just controllers!
  

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def authenticate
    redirect_to root_path unless session != nil
  end

  def authorize
    redirect_to login_path, alert: 'Not authorized - you must be logged in!' if current_user.nil?
  end

end
