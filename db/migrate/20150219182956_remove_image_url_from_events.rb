class RemoveImageUrlFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :image_url, :string
  end
end
