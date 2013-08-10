class User < ActiveRecord::Base
  attr_accessible :password, :password_digest, :password_confirmation, :email
	# validates :name, :email, :zipcode, presence: true
	# validates :zipcode, length: {is: 5}
	has_many :events
  has_secure_password
end
