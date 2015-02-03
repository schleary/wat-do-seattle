class AddMinPriceToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :min_price, :integer
  end
end
