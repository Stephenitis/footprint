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

end
