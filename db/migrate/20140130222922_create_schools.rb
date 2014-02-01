class CreateSchools < ActiveRecord::Migration
  def up 
    create_table :schools do |t|
    t.string "name", :string => 40
    t.string "postcode", :string => 40 
    t.integer "phone"
    t.timestamps
    end
  end

  def down 
  	drop_table :schools
  end 
end
