class Student < ActiveRecord::Base
	has_one :registration
	belongs_to :organization
end
