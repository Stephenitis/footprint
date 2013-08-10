class Event < ActiveRecord::Base
	belongs_to :user

	after_save :update_user_score

	private
	def update_user_score
		self.user.update_score!
	end
end