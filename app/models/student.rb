class Student < ActiveRecord::Base
	# SEG2105 Keiko Climaco 5999930
	has_one :registration
	belongs_to :organization
	validates :studentNumber, length: { maximum: 7 }, presence: true
	validates :firstName, presence: true
	validates :lastName, presence: true
	validates :email, presence: true
end
