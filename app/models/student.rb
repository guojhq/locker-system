class Student < ActiveRecord::Base
	has_one :registration
	belongs_to :organization
	validates :studentNumber, length: { maximum: 7 }, presence: true
	validates :firstName, presence: true
	validates :lastName, presence: true
	validates :email, presence: true
end
