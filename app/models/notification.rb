class Notification < ActiveRecord::Base
  belongs_to :event
  belongs_to :user

  def self.relevant_notifications(current_user)
    @notifications = Notification.where(:user_id => current_user.id)
  end
end
