class School < ActiveRecord::Base
  has_many :tickets
  belongs_to :customer
  
  validates_presence_of :name
end
