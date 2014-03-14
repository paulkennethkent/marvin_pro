class Ticket < ActiveRecord::Base
	belongs_to :product
	belongs_to :admin_user
	belongs_to :customer
  belongs_to :school 
  
  scope :newest_first,  lambda { order("products.created_at DESC")}
  scope :status,  lambda { where(:status => "open") }
end
