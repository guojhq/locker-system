class Registration < ActiveRecord::Base
	has_many :lockers
	belongs_to :organization
	validates :studentNumber, presence: true
	validates :firstName, presence: true
	validates :lastName, presence: true
	validates :lockerNumber, presence: true
	validates :lockerType, presence: true
	validates :lockerCombo, presence: true
	validates :numberOfSemesters, presence: true
	validates :termsAccepted, presence: true

	def self.search(query)
	  where("lockerNumber like ?", "%#{query}%")
	end
end
