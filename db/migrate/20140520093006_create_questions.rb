class CreateQuestions < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.integer "answers_id"
      t.text "body"
      t.timestamps
  end 
    add_index("questions", "answers_id")
     end
    
    def down 
      drop_table :questions
   
    end 
  
end