class CreateBoats < ActiveRecord::Migration[5.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :container_capacity
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
