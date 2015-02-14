class Event < ActiveRecord::Base

  belongs_to :activity
  belongs_to :user

  has_many :invites
  has_many :guests, :through => :invites
  has_many :notifications

end
