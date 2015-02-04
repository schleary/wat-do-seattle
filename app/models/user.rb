class User < ActiveRecord::Base

  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: /@/ }
  # validates :admin, default: false

end
