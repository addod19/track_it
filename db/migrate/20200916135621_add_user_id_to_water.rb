class AddUserIdToWater < ActiveRecord::Migration[6.0]
  def change
    add_column :waters, :user_id, :integer
  end
end
