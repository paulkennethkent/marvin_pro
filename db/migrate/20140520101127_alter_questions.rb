class AlterQuestions < ActiveRecord::Migration
   def up
     add_column("questions", "product_id", :integer)
     add_column("questions", "framework_id", :integer)
     add_index("questions", "product_id")
     add_index("questions", "framework_id")
  end
  
  def down
    remove_index("questions", "product_id")
    remove_column("questions", "product_id")
    remove_index("questions", "framework_id")
    remove_column("questions", "framework_id")
  end
  
end
