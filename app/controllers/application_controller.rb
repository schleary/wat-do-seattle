class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.

  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  # protect_from_forgery with: :exception

  before_action :current_user
  helper_method :current_user

  before_action :get_notifications
  helper_method :get_notifications

  before_action :get_events
  helper_method :get_events

  before_action :get_friends
  helper_method :get_friends

  def current_user
    @current_user ||= User.find(session[:user_id]) if (session[:user_id])
  end

  def get_notifications
    @notifications = Notification.relevant_notifications(@current_user)
  end

  def get_events
    @invites = Invite.where(:guest_id => current_user)
    @rel_events = Event.where("(user_id in (?) OR id in (?))", current_user, all_events(@invites))
  end

  def get_friends
    @friends = Friendship.where(:user_id => current_user)
  end

  def all_events(invites)
    @invites.map do |invite|
      invite.event_id
    end
  end



end
