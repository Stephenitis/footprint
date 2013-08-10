class User < ActiveRecord::Base
	attr_accessible :name, :email, :zipcode, :score, :password, :password_confirmation, :password_digest

	validates :name, :email, :zipcode, presence: true
	validates :zipcode, length: {is: 5}

	has_many :friendships
	has_many :friends, through: :friendships
	has_many :events
  has_secure_password
end