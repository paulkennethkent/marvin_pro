class Customer < ActiveRecord::Base
	has_many :tickets
  has_one :school
end
