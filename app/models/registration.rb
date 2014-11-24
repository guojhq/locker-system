class Registration < ActiveRecord::Base
	has_many :lockers
	belongs_to :student
	validates :numberOfSemester, length: { maximum: 1 }, presence: true
	validates :termsAccepted, presence: true
end
