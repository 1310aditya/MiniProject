class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.integer :supplier_id
      t.bigint :p_location
      t.bigint :d_location
      t.integer :p_time
      t.string :car
      t.integer :rate_per_traveller
      t.integer :s_available
      t.integer :s_left

      t.timestamps null: false
    end
  end
end
