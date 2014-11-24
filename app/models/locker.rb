class Locker < ActiveRecord::Base
	# SEG2105 Keiko Climaco 5999930
	belongs_to :organization
	belongs_to :student
	validates :lockerNumber, FILL_IN, presence: true
	validates :location, FILL_IN, presence: true
	validates :type, FILL_IN, presence: true
	validates :combo, FILL_IN, presence: true
end
