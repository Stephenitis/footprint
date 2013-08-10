module UserHelper

  ########################
  def berkley_calc(miles=10, mpg="24")
    response = HTTParty.get("https://apis-dev.berkeley.edu/coolclimate/footprint-sandbox?input_location=20151&input_income=1&input_location_mode=1&input_size=0&input_footprint_transportation_miles1=#{miles*365}&input_footprint_transportation_mpg1=#{mpg}&input_footprint_transportation_fuel1=0&app_id=f5e89990&app_key=d1847181c85aa26015b4ae9afb230b91")
  # response.code, response.message, response.headers.inspect
  require 'crack/xml' # for just xml
  parsed_response = Crack::XML.parse(response.body)
  @carbon = parsed_response["response"]["result_motor_vehicles_direct"].to_f + parsed_response["response"]["result_motor_vehicles_indirect"].to_f
  end


  def moves_api_call()
    response = HTTParty.get("https://api.moves-app.com/api/v1/user/activities/daily/20130809?access_token=mfqJ5ApA51SA1BXV1Tr7G9B_6oPTdYyMllb63U9kOq_hy33pQkFnib_G1bL7H45E")
    puts response.body
  end
end
