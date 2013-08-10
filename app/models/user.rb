class User < ActiveRecord::Base
	validates :name, :email, :zipcode, presence: true
	has_many :events
end