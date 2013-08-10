class User < ActiveRecord::Base
	validates :name, :email, :zipcode, presence: true
	validates :zipcode, length: {is: 5}
	has_many :events
end