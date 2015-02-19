class RemoveImageUrlFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :image_url, :string
  end
end
