class AddRoleToAdminUsers < ActiveRecord::Migration[6.0]
  def up
    add_column :admin_users, :role_id, :integer
  end

  def down
    remove_column :admin_users,:role_id
  end
end
