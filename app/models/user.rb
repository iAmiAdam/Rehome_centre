class User < ActiveRecord::Base
	# Hopefully rescues have a lot of animals to rehome
	has_many :animals

	# We need to make sure users are inputting their data right
	validates :name, presence: true
	validates :email, presence: true
	validates :password_digest, presence: true
	validates :type, presence: true
end
