module UserHelper

  ########################
  def berkley_calc(meters, mpg="24")
    yearly_miles = meters_to_miles(meters) * 365
    response = HTTParty.get("https://apis-dev.berkeley.edu/coolclimate/footprint-sandbox?input_location=20151&input_income=1&input_location_mode=1&input_size=0&input_footprint_transportation_miles1=#{yearly_miles}&input_footprint_transportation_mpg1=#{mpg}&input_footprint_transportation_fuel1=0&app_id=f5e89990&app_key=d1847181c85aa26015b4ae9afb230b91")
  
    # response.code, response.message, response.headers.inspect
    require 'crack/xml' # for just xml
    parsed_response = Crack::XML.parse(response.body)
    @carbon = parsed_response["response"]["result_motor_vehicles_direct"].to_f + parsed_response["response"]["result_motor_vehicles_indirect"].to_f
  end

  def moves_daily_log
    response = HTTParty.get("https://api.moves-app.com/api/v1/user/activities/daily/20130809?access_token=mfqJ5ApA51SA1BXV1Tr7G9B_6oPTdYyMllb63U9kOq_hy33pQkFnib_G1bL7H45E")
    daily_log = JSON.parse(response.body)
  end

  def meters_to_miles(meters=0)
    meters * 0.00062137
  end

  def daily_walk_distance(daily_log)
    @daily_walk_distance = 0

    daily_log[0]['segments'].each do |segment|
      segment['activities'].each do |activity|
        @daily_walk_distance += activity['distance'] if activity['activity'] == 'wlk' 
      end
    end

    @daily_walk_distance
  end

  def daily_trip_distance(daily_log)
    @daily_trip_distance = 0

    daily_log[0]['segments'].each do |segment|
      segment['activities'].each do |activity|
        @daily_trip_distance += activity['distance'] if activity['activity'] == 'trp' 
      end
    end

    @daily_trip_distance
  end

  def daily_cycle_distance(daily_log)
    @daily_cycle_distance = 0

    daily_log[0]['segments'].each do |segment|
      segment['activities'].each do |activity|
        @daily_cycle_distance += activity['distance'] if activity['activity'] == 'cyc' 
      end
    end

    @daily_cycle_distance
  end
end
