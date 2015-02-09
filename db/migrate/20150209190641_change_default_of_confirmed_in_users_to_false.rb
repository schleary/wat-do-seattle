class ChangeDefaultOfConfirmedInUsersToFalse < ActiveRecord::Migration
  def change
    change_column_default :users, :confirmed, false
  end
end
