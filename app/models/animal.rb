class Animal < ActiveRecord::Base
	# Animals belong to a rescue
	belongs_to :user

	# Animals must have a name, breed, colour, age, gender, type and description
	validates :name, presence: true
	validates :breed, presence: true
	validates :colour, presence: true
	validates :age, presence: true
	validates :description, presence: true
	validates :gender, presence: true
	validtes :type, presence: true

	# We need to know if they're speyed or neutered and whether they're vaccinated
	validates :vaccinate, presence: true
	validates :neutered, presence: true

end
