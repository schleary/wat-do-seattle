class NotificationsController < ApplicationController
  def index
    @notifications = Notification.where(:user_id => current_user.id)
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
    params.require(:notification).permit(:user_id)
  end

end
