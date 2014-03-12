class Customer < ActiveRecord::Base
	has_many :tickets
  has_one :school
  
  validates_presence_of :name
end
