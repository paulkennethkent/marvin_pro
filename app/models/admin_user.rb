class AdminUser < ActiveRecord::Base
 
  has_secure_password
  
  has_many :tickets

  scope :sorted, lambda { order("last_name ASC, first_name ASC") }

  def name
  	"#{first_name} #{last_name}"
  	# Or: first_name + ' ' + lasrtname 
  	# Or: [first_name, last_name].join(' ')
 
	# To configue a different table name: 
	# self.table_name = "admin_users"
  end 

end
