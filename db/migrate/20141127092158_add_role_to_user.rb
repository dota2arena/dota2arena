class AddRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer, limit: 1, default: 1
  end
end
