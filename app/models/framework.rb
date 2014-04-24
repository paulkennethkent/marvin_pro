class Framework < ActiveRecord::Base
    has_many :prodcuts
    validates_presence_of :name
    validates_length_of :name, :maximum => 255
    validates_uniqueness_of :name
end
