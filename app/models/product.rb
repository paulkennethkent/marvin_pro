class Product < ActiveRecord::Base
  has_many :tickets
  belongs_to :framework
  
  
  validates_presence_of :name
  validates_length_of :name, :maximum => 255
  validates_uniqueness_of :name
  validates_presence_of :tier
  validates_length_of :tier, :maximum => 255
  
	scope :tier,  lambda { where(:tier => "Primary") }
	scope :newest_first,  lambda { order("products.created_at DESC")}
	scope :search, lambda {|query|
		where(["name LIKE ?", "%#{query}%"])
	}
end
