class AddGuestIdToInvites < ActiveRecord::Migration
  def change
    add_column :invites, :guest_id, :integer
  end
end
