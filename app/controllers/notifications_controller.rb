class NotificationsController < ApplicationController
  def index
    @notifications = Notification.relevant_notifications(current_user)
  end

  def create
    @notification = Notification.new(notification_params)
    if @notification.save
      puts "CREATED"

    end
  end

  def destroy
  end

  private

  def notification_params
    params.require(:notification).permit(:user_id, :event_id, :description)
  end

end
