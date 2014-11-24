class Organization < ActiveRecord::Base
	has_many :students
	has_many :lockers
	validates :postalcode, length: { maximum: 6 }
	validates :phone, length: { maximum: 10 }
end
