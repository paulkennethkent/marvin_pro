class CreateProducts < ActiveRecord::Migration
  def up
    create_table :products do |t|
    t.string "name", :string => 50 
    t.string "tier", :string => 50 
    t.timestamps
    end

    def down
    	drop_table :products
    end
  end
end
