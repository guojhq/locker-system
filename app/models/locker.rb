class Locker < ActiveRecord::Base
	belongs_to :registration
	belongs_to :organization
end
