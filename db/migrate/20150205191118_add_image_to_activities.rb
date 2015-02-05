class AddImageToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :image, :text
  end
end
