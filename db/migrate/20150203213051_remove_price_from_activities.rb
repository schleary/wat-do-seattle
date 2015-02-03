class RemovePriceFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :price, :integer
  end
end
