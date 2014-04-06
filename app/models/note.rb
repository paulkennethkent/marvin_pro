class Note < ActiveRecord::Base
	belongs_to :ticket
	belongs_to :admin_user
end
