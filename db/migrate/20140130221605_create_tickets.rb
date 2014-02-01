class CreateTickets < ActiveRecord::Migration
  
  def up
    create_table :tickets do |t|
    t.string "status", :string => 1, :default => "o", :null => false
	  t.timestamps

    end 
    end

  def down 
  	drop_table :tickets

  end 

end
