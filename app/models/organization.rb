class Organization < ActiveRecord::Base
	#SEG2105 Keiko Climaco 5999930
	#Setting up associations
	has_many :students
	has_many :lockers
	validates :name, presence: true
	validates :postalCode, length: { maximum: 6 }, presence: true
	validates :phone, length: { maximum: 10 }, presence: true
	validates :streetAddress, presence: true
	validates :city, presence: true
	validates :email, presence: true

	#Setting up primary keys
	self.primary_key = 'name'

	#IDs
	def id
		raise NoMethodError, "Please call #{self.class.primary_key} instead."
	end

	def id=(value)
		raise NoMethodError, "Please call #{self.class.primary_key}= instead."
	end

	def to_param
		name.parameterize
	end
end
