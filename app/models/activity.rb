class Activity < ActiveRecord::Base

  validates :name, :price, :url, :description, :min_activity_level, :max_activity_level, presence: true

  validates :name, :description, :url, uniqueness: true

end
