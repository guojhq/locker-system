class Organization < ActiveRecord::Base
	has_many :students
	has_many :lockers
end
