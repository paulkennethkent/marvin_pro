class Ticket < ActiveRecord::Base
	belongs_to :product
	belongs_to :admin_user
	belongs_to :customer
  belongs_to :school 
  
  scope :newest_first,  lambda { order("products.created_at DESC")}
  scope :statuses, order("field(status, 'open', 'paused', 'closed')")
  
  def due_on 
    due_on = created_at + 2.day
  end
  
end
