class Invite < ActiveRecord::Base

  belongs_to :event
  belongs_to :guest, :class_name => "User"

  belongs_to :user

end
