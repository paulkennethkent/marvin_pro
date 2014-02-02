class AdminUser < ActiveRecord::Base
	has_many :tickets
	# To configue a different table name: 
	# self.table_name = "admin_users"

end
