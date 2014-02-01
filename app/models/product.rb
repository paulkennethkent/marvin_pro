class Product < ActiveRecord::Base

	scope :tier,  lambda { where(:tier => "Primary") }
	scope :newest_first,  lambda { order("products.created_at DESC")}
	scope :search, lambda {|query|
		where(["name LIKE ?", "%#{query}%"])
	}
end
