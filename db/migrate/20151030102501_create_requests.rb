class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :requester_id
      t.bigint :p_location
      t.integer :p_time
      t.bigint :d_location
      t.boolean :status
      t.integer :r_time

      t.timestamps null: false
    end
  end
end
