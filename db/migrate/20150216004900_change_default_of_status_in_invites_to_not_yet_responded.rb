class ChangeDefaultOfStatusInInvitesToNotYetResponded < ActiveRecord::Migration
  def change
    change_column_default :invites, :status, "Not Yet Responded"
  end
end
