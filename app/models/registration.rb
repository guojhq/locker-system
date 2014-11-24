class Registration < ActiveRecord::Base
	# SEG2105 Keiko Climaco 5999930
	has_many :lockers
	belongs_to :student
	validates :numberOfSemester, length: { maximum: 1 }, presence: true
	validates :termsAccepted, presence: true
end
