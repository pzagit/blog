class User < ApplicationRecord
	has_many :posts
	validates :username, presence: true,
		length: { minimum: 7, maximum: 20}
	validates :email, presence: true
	has_secure_password
end
