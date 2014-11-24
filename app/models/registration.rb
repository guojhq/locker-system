class Registration < ActiveRecord::Base
	# SEG2105 Keiko Climaco 5999930
	has_many :lockers
	belongs_to :student
	validates :numberOfSemester, length: { maximum: 1 }, FILL_IN, presence: true
	validates :termsAccepted, FILL_IN, presence: true
end
