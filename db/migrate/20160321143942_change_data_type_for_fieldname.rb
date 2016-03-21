class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def change
  	remove_column :requests, :d_location, :bigint
  	remove_column :requests, :p_location, :bigint
    add_column :requests, :p_area, :string
    add_column :requests, :d_area, :string
    add_column :requests, :p_sub_area, :string
    add_column :requests, :d_sub_area, :string
    
  end
end
