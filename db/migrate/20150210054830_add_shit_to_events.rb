class AddShitToEvents < ActiveRecord::Migration
  def change
    add_column :events, :shit, :integer
  end
end
