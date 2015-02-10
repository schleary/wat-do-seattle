class RemoveShitFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :shit, :integer
  end
end
