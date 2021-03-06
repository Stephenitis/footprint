# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  email               :string(255)
#  zipcode             :integer
#  score               :integer
#  moves_access_token  :string(255)
#  moves_refresh_token :string(255)
#  password_digest     :string(255)
#

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
  	all_events.map! { |event| event = event.score }
  	total = all_events.reduce(:+)
  	self.score = total / all_events.size
  	self.save
  end

  
end
