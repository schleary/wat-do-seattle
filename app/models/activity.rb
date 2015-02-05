class Activity < ActiveRecord::Base

  belongs_to :events

  validates :name, :min_price, :max_price, :url, :description, :min_activity_level, :max_activity_level, presence: true
  validates :name, :description, :url, uniqueness: true

  mount_uploader :image, ImageUploader
  
end
