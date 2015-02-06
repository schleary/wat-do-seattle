class RemoveActivityIdFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :activity_id, :string
  end
end
