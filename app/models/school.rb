class School < ActiveRecord::Base
  has_many :tickets
  belongs_to :customer
end
