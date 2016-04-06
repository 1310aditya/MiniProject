class AddQnToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :qn, :integer
  end
end
