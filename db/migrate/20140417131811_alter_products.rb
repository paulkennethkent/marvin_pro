class AlterProducts < ActiveRecord::Migration
  
  def up
    add_column("products", "isbn", :string) 
    add_column("products", "support_url", :string) 
    add_column("products", "framework_id", :integer)
    add_index("products", "framework_id")
  end
  
  def down
    remove_index("products", "framework_id")
    remove_column("products", "framework_id")
    remove_column("products", "support_url")
    remove_column("products", "isbn")
  end
  
end
