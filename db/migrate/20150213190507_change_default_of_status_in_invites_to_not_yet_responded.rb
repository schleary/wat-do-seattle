class ChangeDefaultOfStatusInInvitesToNotYetResponded < ActiveRecord::Migration
  def change
    change_column_default :invites, :status, "not yet responded"
  end
end
