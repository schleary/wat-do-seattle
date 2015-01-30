class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date_time_start
      t.datetime :date_time_end

      t.timestamps
    end
  end
end
