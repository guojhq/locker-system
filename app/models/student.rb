class Student < ActiveRecord::Base
	# SEG2105 Keiko Climaco 5999930
	has_one :registration
	belongs_to :organization
	validates :studentNumber, length: { maximum: 7 }, FILL_IN, presence: true
	validates :firstName, FILL_IN, presence: true
	validates :lastName, FILL_IN, presence: true
	validates :email, FILL_IN, presence: true
end
