class Activity < ActiveRecord::Base

  validates :name, :min_price, :max_price, :url, :description, :min_activity_level, :max_activity_level, presence: true

  validates :name, :description, :url, uniqueness: true

end
