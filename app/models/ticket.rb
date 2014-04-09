class Ticket < ActiveRecord::Base
	belongs_to :product
	belongs_to :admin_user
	belongs_to :customer
  belongs_to :school 
  has_many :notes
  
  before_validation :add_default_ticket_status
  
  validates_presence_of :product
  validates_presence_of :admin_user
  validates_presence_of :status
  

  scope :newest_first,  lambda { order("products.created_at DESC")}
  scope :statuses, order("field(status, 'open', 'paused', 'closed')")
  scope :due_on, lambda { order("tickets.created_at DESC")}
  
  def due
    due = created_at + 1.day
  end
  
  private 
  
  def add_default_ticket_status
    if status.blank?
      self.status = "Open"
    end
  end
  
end
