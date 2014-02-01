class Product < ActiveRecord::Base
	has_many :tickets
	scope :tier,  lambda { where(:tier => "Primary") }
	scope :newest_first,  lambda { order("products.created_at DESC")}
	scope :search, lambda {|query|
		where(["name LIKE ?", "%#{query}%"])
	}
end
