module FriendshipHelper
	def search_for_friends(fb_data)
		#TODO : Do when we know what facebook gives us
	end

	def add_friend(email)
		current_user.friendships.create(friend_id: User.find_by_email(email).id)
	end
end
