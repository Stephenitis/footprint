class User < ActiveRecord::Base
	validates :name, :email, :zipcode, presence: true
end