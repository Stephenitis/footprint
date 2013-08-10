class User < ActiveRecord::Base
	attr_accessible :name, :email, :zipcode, :score, :password, :password_confirmation, :password_digest

	validates :name, :email, :zipcode, presence: true
	validates :zipcode, length: {is: 5}

	has_many :friendships
	has_many :friends, through: :friendships
	# validates :name, :email, :zipcode, presence: true
	# validates :zipcode, length: {is: 5}
	has_many :events
  has_secure_password

  def update_score!
  	all_events = self.events.all
  	total = all_events.inject(:+)
  	self.score = total/all_events.size
  	self.save
  end
end
