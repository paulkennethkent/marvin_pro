class CreateTickets < ActiveRecord::Migration
  
  def up
    create_table :tickets do |t|
    	t.integer "product_id"
    	t.integer "customer_id"
      	t.integer "admin_users_id"
    	t.string "status", :string => 1, :default => "o", :null => false
	  	t.timestamps

    end 
    add_index("tickets", "product_id")
    add_index("tickets", "customer_id")
    add_index("tickets", "admin_users_id")
   end

  def down 
  	drop_table :tickets

  end 

end
