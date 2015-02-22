class NotificationsController < ApplicationController
  before_action :current_user

  def index
    if current_user != nil
      @notifications = Notification.relevant_notifications(current_user)
    end
  end

  def create
    # @notification = Notification.new(notification_params)
    # if @notification.save
    #   puts "CREATED"
    #
    # end
  end

  def destroy
    @notification = Notification.find(params[:id])
    @notification.destroy
    redirect_to notifications_path
  end

  private

  def notification_params
    params.require(:notification).permit(:user_id, :event_id, :description)
  end

end
