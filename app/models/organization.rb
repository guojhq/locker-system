class Organization < ActiveRecord::Base
	has_many :students
	has_many :lockers
	validates :postalcode, length: { maximum: 6 }, FILL_IN, presence: true
	validates :phone, length: { maximum: 10 }, FILL_IN, presence: true
	validates :streetAddress, FILL_IN, presence: true
	validates :city, FILL_IN, presence: true
	validates :email, FILL_IN, presence: true
	validates :postalcode, length: { maximum: 6 }
	validates :phone, length: { maximum: 10 }
end
