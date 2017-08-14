class AddRollsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :superadmin_role, :boolean, default: false
    add_column :users, :basiclender_role, :boolean, default: false
    add_column :users, :prolender_role, :boolean, default: false
    add_column :users, :borrower_role, :boolean, default: false
  end
end
