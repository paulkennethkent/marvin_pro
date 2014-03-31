class Ticket < ActiveRecord::Base
	belongs_to :product
	belongs_to :admin_user
	belongs_to :customer
  belongs_to :school 
  
  validates_presence_of :product
  validates_presence_of :admin_user

  scope :newest_first,  lambda { order("products.created_at DESC")}
  scope :statuses, order("field(status, 'open', 'paused', 'closed')")
  scope :due_on, lambda { order("tickets.created_at DESC")}
  
  def due
    due = created_at + 1.day
  end
  
end
