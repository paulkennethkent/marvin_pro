class AdminUser < ActiveRecord::Base
  has_many :tickets
  has_many :notes
  has_secure_password
  

  scope :sorted, lambda { order("last_name ASC, first_name ASC") }
  
  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  
  validates_presence_of :first_name
  validates_length_of :first_name, :maximum => 25
  validates_presence_of :last_name
  validates_length_of :last_name, :maximum => 25
  validates_presence_of :username
  validates_length_of :username, :maximum => 50
  validates_uniqueness_of :username
  validates_presence_of :department
  validates_length_of :department, :maximum => 25
  validates_presence_of :email
  validates_length_of :email, :maximum => 100
  validates_format_of :email, :with => EMAIL_REGEX
  #validates_presence_of :password_confirmation
  
  def name
  	"#{first_name} #{last_name}"
  	# Or: first_name + ' ' + lasrtname 
  	# Or: [first_name, last_name].join(' ')
  end 
 
	# To configue a different table name: 
	# self.table_name = "admin_users"


end
