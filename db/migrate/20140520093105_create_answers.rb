class CreateAnswers < ActiveRecord::Migration
  def up 
    create_table :answers do |t|
      t.integer "questions_id" 
      t.string "short"
      t.text "long"
      
    end
    add_index("answers", "questions_id")
  end
    
    def down      
      drop_table :answers       
    end
end