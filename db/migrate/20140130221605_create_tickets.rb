class CreateTickets < ActiveRecord::Migration
  
  def up
    create_table :tickets do |t|
    	t.integer "product_id"
      	#same as: t.references :tickets
    	t.string "status", :string => 1, :default => "o", :null => false
	  	t.timestamps

    end 
    add_index("tickets", "product_id")
   end

  def down 
  	drop_table :tickets

  end 

end
