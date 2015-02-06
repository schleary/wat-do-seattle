class RemoveUserIdFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :user_id, :string
  end
end
