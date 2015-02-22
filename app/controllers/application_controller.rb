class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.

  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  # protect_from_forgery with: :exception

  before_action :current_user
  helper_method :current_user

  before_action :get_notifications
  helper_method :get_notifications

  def current_user
    @current_user ||= User.find(session[:user_id]) if (session[:user_id])
  end

  def get_notifications
    @notifications = Notification.relevant_notifications(@current_user)
  end



end
