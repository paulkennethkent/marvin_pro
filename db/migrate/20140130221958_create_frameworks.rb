class CreateFrameworks < ActiveRecord::Migration
  def up
    create_table :frameworks do |t|
    t.string "name", :string => 50
    t.timestamps
    end
  end

  def down 
  	drop_table :frameworks
  end 
end
