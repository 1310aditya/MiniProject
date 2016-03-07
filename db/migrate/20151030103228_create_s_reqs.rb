class CreateSReqs < ActiveRecord::Migration
  def change
    create_table :s_reqs do |t|
      t.integer :avl_id
      t.integer :user_id
      t.integer :cab_id

      t.timestamps null: false
    end
  end
end
