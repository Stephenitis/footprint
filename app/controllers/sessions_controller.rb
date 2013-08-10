class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:user][:email])
    user = @user.authenticate(params[:user][:password])
    if user
      self.current_user = user
      redirect_to root_path
    else
      flash.now.alert = "Invalid username or password"
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end