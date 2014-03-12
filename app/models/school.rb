class School < ActiveRecord::Base
  has_many :tickets
  belongs_to :customer
  
  validates_presence_of :name
  validates_length_of :name, :maximum => 255
end
