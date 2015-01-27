class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :price
      t.string :url
      t.text :description
      t.integer :min_activity_level
      t.integer :max_activity_level

      t.timestamps
    end
  end
end
