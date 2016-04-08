class AddAreaToSubareas < ActiveRecord::Migration
  def change
    remove_column :subareas, :area_id, :integer
    add_reference :subareas, :area, index: true, foreign_key: true
  end
end
