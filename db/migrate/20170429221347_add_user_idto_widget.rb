class AddUserIdtoWidget < ActiveRecord::Migration[5.0]
  def change
    add_column :widgets, :user_id, :integer
  end
end
