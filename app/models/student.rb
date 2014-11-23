class Student < ActiveRecord::Base
	belongs_to :organization
	has_one :registration
end
