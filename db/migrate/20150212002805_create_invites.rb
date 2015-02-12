class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.string :status
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end
end
