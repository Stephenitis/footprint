# == Schema Information
#
# Table name: events
#
#  id               :integer          not null, primary key
#  distance         :integer
#  user_id          :integer
#  score            :integer
#  miles_walked     :integer
#  miles_biked      :integer
#  carbon_footprint :integer
#  calories         :integer
#

class Event < ActiveRecord::Base
	belongs_to :user
end
