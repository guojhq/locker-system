class Registration < ActiveRecord::Base

	# Keiko Climaco 5999930, all these validations for user input
	# checking for valid input length, input type, presence etc.
	has_many :lockers
	belongs_to :organization
	validates :studentNumber, presence: true, :length => {:is => 7}, :numericality => {:only_integer => true}
	validates :firstName, presence: true
	validates :lastName, presence: true
	validates :email, presence: true
	validates :lockerNumber, presence: true, :numericality => {:only_integer => true}, :uniqueness => true
	validates :lockerType, presence: true, inclusion: {in: %w(keyed coded), message: "%{value} is not a valid locker type"} 
	validates :lockerCombo, presence: true, :length => {:is => 4}, :numericality => {:only_integer => true}
	validates :numberOfSemesters, presence: true, :length => {:is => 1}, :numericality => {:only_integer => true}, :if => :valid_number?
	validates :termsAccepted, presence: true, confirmation: true

	# Keiko Climaco 5999930, implementing search function
	def self.search(query)
	  where("lockerNumber like ?", "%#{query}%")
	end

	# Keiko Climaco 5999930, validation for number of semesters
	def valid_number?
		numberOfSemesters == 1 || numberOfSemesters == 2
	end
end
