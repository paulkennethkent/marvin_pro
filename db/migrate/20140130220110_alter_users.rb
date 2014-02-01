class AlterUsers < ActiveRecord::Migration
  
  def up
  	rename_table("users", "admin_users")
  	rename_column("admin_users", "password", "hashed_password")
  	puts "*** adding an index is next ***"
  	add_index("admin_users", "username")
  end

  def down
  	remove_index("admin_users", "username")
  	rename_column("admin_users", "hashed_password", "password")
  	rename_table("admin_users", "users")
  end

end
