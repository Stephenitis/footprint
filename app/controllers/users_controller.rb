class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.save
    if @user.errors.any?
      flash.now[:signup_errors] = @user.errors.full_messages
      render new_user_path
    else
      self.current_user = @user
      redirect_to root_path
    end
  end

  def oauth
    user = self.current_user
    user.moves_access_token = auth_hash[:credentials][:token]
    user.moves_refresh_token = auth_hash[:credentials][:refresh_token]
    user.save
    redirect_to users_path
  end

  def auth_hash
    request.env['omniauth.auth']
  end
    
  def index
    @user = self.current_user
    @friends = current_user.friendships
  end

  def show
  end

end
