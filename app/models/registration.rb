class Registration < ActiveRecord::Base
	has_many :lockers
	belongs_to :student
<<<<<<< HEAD
	validates :numberOfSemester, length: { maximum: 1 }, FILL_IN, presence: true
	validates :termsAccepted, FILL_IN, presence: true
=======
>>>>>>> parent of 57bb4fa... some validations
end
