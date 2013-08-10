# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new(name:"Stephen",
								email:"nguyenhstephen@gmail.com",
								zipcode:94117)
user.password = "password"
user.save

user = User.new(name:"Mitch",
								email:"mitchel.seaman@gmail.com",
								zipcode:94117)
user.password = "password"
# user.moves_access_token = 'mfqJ5ApA51SA1BXV1Tr7G9B_6oPTdYyMllb63U9kOq_hy33pQkFnib_G1bL7H45E'
user.save

user = User.new(name:"Eric",
								email:"eric.chen0121@gmail.com",
								zipcode:94117)
user.password = "password"
# user.moves_access_token = 'mfqJ5ApA51SA1BXV1Tr7G9B_6oPTdYyMllb63U9kOq_hy33pQkFnib_G1bL7H45E'
user.save

user = User.new(name:"Daniel",
								email:"dmkwillems@gmail.com",
								zipcode:94117)
user.password = "password"
# user.moves_access_token = 'mfqJ5ApA51SA1BXV1Tr7G9B_6oPTdYyMllb63U9kOq_hy33pQkFnib_G1bL7H45E'
user.save

user = User.new(name:"Jared",
								email:"jaredsmithse@icloud.com",
								zipcode:94117)
user.password = "password"
# user.moves_access_token = 'mfqJ5ApA51SA1BXV1Tr7G9B_6oPTdYyMllb63U9kOq_hy33pQkFnib_G1bL7H45E'
user.save