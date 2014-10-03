class User < ActiveRecord::Base
	# Hopefully rescues have a lot of animals to rehome
	has_many :animals

	# We need to make sure users are inputting their data right
	validates :name, presence: true
	validates :email, presence: true
	validates :password_digest, presence: true
	validates :type, presence: true

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.digest(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private

		def create_remember_token
			self.remember_token = User.digest(User.new_remember_token)
		end
end
