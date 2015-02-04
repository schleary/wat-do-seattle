class Event < ActiveRecord::Base

  has_one :activity

  belongs_to :user
  has_many :users

end
