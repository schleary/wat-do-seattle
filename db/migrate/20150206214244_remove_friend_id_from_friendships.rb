class RemoveFriendIdFromFriendships < ActiveRecord::Migration
  def change
    remove_column :friendships, :friend_id, :string
  end
end
