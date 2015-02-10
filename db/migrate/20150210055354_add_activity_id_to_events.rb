class AddActivityIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :activity_id, :integer
  end
end
