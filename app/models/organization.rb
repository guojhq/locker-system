class Organization < ActiveRecord::Base
	has_many :students
	has_many :lockers
	set_primary_key :name
end
