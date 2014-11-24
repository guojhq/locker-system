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

	  def self.search(search)
    if search
      find(:all, :conditions => ['Registration.studentNumber LIKE ?', "%#{search}"])
    else
      find(:all)
    end
  end
end
