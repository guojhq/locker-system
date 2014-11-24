class Organization < ActiveRecord::Base
	# SEG2105 Keiko Climaco 5999930
	has_many :students
	has_many :lockers
	validates :postalcode, length: { maximum: 6 }, presence: true
	validates :phone, length: { maximum: 10 }, presence: true
	validates :streetAddress, presence: true
	validates :city, presence: true
	validates :email, presence: true
end
