class RemoveFieldNameFromSupplies < ActiveRecord::Migration
  def change
    remove_column :supplies, :p_location, :bigint
    remove_column :supplies, :d_location, :bigint
    add_column :supplies, :p_area, :string
    add_column :supplies, :p_sub_area, :string
    add_column :supplies, :d_area, :string
    add_column :supplies, :d_sub_area, :string

  end
end
