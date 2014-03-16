class Customer < ActiveRecord::Base
	has_many :tickets
  has_one :school
  
  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  # validates_presence_of :name
  # validates_length_of :name, :maximum => 255
  # validates_presence_of :email
  # validates_length_of :email, :maximum => 100
  # validates_format_of :email, :with => EMAIL_REGEX
  # validates_confirmation_of :email 

  #sexy validation
  validates :name, :presence => true,
  					:length => { :maximum => 25 }

  validates :email, :presence => true,
  					:length => { :maximum => 100},
  					:format => EMAIL_REGEX,
  					:confirmation => true

  
end
