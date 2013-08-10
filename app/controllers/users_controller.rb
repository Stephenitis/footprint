class UsersController < ApplicationController

  include UserHelper

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
    if !self.current_user
      redirect_to login_path
    else
      @user = self.current_user
      @top_users = User.order('score DESC').limit(5)

      #going to moves api
      daily_log = moves_daily_log(@user)
      daily_walk = daily_walk_distance(daily_log)
      daily_cycle = daily_cycle_distance(daily_log)
      daily_trip = daily_trip_distance(daily_log)

      daily_CO2_footprint = berkeley_calc(daily_trip)

      # writing event to db
      @user.events << Event.create(meters_driven: daily_trip, meters_walked: daily_walk, meters_biked: daily_cycle, carbon_footprint: daily_CO2_footprint)
      @daily_events = @user.events.last
    end
  end

  def show
    @user = self.current_user
    render layout: false
  end

end
