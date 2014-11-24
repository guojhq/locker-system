class Registration < ActiveRecord::Base
	has_many :lockers
	belongs_to :student
end
