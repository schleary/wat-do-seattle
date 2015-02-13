class ChangeDefaultOfNotifyInUsersToFalse < ActiveRecord::Migration
  def change
    change_column_default :users, :notify, false
  end
end
