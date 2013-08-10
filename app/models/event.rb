class Event < ActiveRecord::Base
	attr_accessible :meters_driven, :user_id, :score, :meters_walked, :meters_biked, :carbon_footprint, :calories
	belongs_to :user

	# after_save :update_user_score

	private
	def update_user_score
		self.user.update_score!
	end
end