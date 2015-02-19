class User < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  has_many :events

  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  has_many :invitations, :through => :events
  has_many :inverse_invites, :class_name => "Invite", :foreign_key => "guest_id"

  validates :name, presence: true
  validates :email, uniqueness: true, format: { with: /@/ }
  validates :admin, default: false

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def adminify
    self.admin = true
  end

  def turn_down
    self.admin = false
  end

  def confirm
    self.confirmed = true
  end


end
