class Question < ActiveRecord::Base
  belongs_to :product
  belongs_to :framework
  has_many :answers 
end
