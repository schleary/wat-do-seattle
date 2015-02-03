class AddMaxPriceToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :max_price, :integer
  end
end
