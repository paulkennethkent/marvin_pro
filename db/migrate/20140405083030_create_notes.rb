class CreateNotes < ActiveRecord::Migration
  def up
    create_table :notes do |t|

      t.integer "admin_user_id"
      t.integer "ticket_id"
      t.string "comment", :limit => 250
      t.timestamps
    end
    add_index("notes", "admin_user_id")
    add_index("notes", "ticket_id")
  end

  def down
  	drop_table :notes

  end
end
