class AddActivityIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :activity_id, :string
  end
end
