class Student < ActiveRecord::Base
	has_one :registration
	belongs_to :organization
<<<<<<< HEAD
	validates :studentNumber, length: { maximum: 7 }, FILL_IN, presence: true
	validates :firstName, FILL_IN, presence: true
	validates :lastName, FILL_IN, presence: true
	validates :email, FILL_IN, presence: true
=======
>>>>>>> parent of 57bb4fa... some validations
end
