class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.text :comment
      t.integer :driver_id
      t.integer :user_id
      t.integer :rater_id

      t.timestamps null: false
    end
  end
end
