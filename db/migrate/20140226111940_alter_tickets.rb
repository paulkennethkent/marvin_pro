class AlterTickets < ActiveRecord::Migration
 
   def up
     add_column("tickets", "school_id", :integer) 
     puts "*** adding an index is next ***"
     add_index("tickets", "school_id")
         
   end
  
  def down 
    remove_index("tickets", "school_id")
    remove_column("tickets", "school_id")
  end
  
end
