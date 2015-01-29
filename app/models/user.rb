class User < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: /@/ }
  # validates :admin, default: false

end
