class AlterTicketsIndex < ActiveRecord::Migration
  def up
    remove_column :tickets, :admin_users_id
    add_column("tickets", "admin_user_id", :integer)
    add_index("tickets", "admin_user_id")
    #add_index("tickets", "admin_user_id")
  end
  
  def down
    #remove_column :tickets, :admin_user_id
    remove_column :tickets, :admin_user_id
    add_column("tickets", "admin_users_id", :integer)
    add_index("tickets", "admin_users_id")
  end
  
end
