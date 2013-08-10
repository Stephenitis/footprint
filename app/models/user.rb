class User < ActiveRecord::Base
	validates :name, :email, :zipcode, presence: true
	validates :zipcode, length: 5
	has_many :events
end