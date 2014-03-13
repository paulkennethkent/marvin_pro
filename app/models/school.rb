class School < ActiveRecord::Base
  has_many :tickets
  belongs_to :customer
  
  validates_presence_of :name
  validates_length_of :name, :maximum => 255
  validates_presence_of :postcode
  validates_length_of :postcode, :maximum => 15
  validates_presence_of :phone
  validates_length_of :phone, :maximum => 15
 
end
