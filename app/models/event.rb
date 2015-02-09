class Event < ActiveRecord::Base

  has_one :activity

  belongs_to :user

end
