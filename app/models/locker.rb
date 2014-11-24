class Locker < ActiveRecord::Base
	belongs_to :organization
	belongs_to :student
<<<<<<< HEAD
	validates :lockerNumber, FILL_IN, presence: true
	validates :location, FILL_IN, presence: true
	validates :type, FILL_IN, presence: true
	validates :combo, FILL_IN, presence: true
=======
>>>>>>> parent of 57bb4fa... some validations
end
