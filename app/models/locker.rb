class Locker < ActiveRecord::Base
	belongs_to :organization
	belongs_to :student
end
