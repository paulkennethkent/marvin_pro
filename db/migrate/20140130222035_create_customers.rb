class CreateCustomers < ActiveRecord::Migration
  def up
    create_table :customers do |t|
    t.string "name", :string => 50; 
    t.string "email", :default => "", :null => false
    t.integer "phone"
    t.timestamps
    end
  end

  def down 
  	drop_table :customers
  end 
end
