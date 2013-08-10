class OauthsController < ApplicationController
	def index
		p "*" * 100
		p request.env['omniauth.auth']
	end
end