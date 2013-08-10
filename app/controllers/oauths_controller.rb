class OauthsController < ApplicationController
	def index
		
		# render text: request.env['omniauth.auth'][:credentials][:token]
	end
end