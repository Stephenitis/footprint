class ChangeMilesToMeters < ActiveRecord::Migration
  def change
  	rename_column :events, :miles_walked, :meters_walked
  	rename_column :events, :miles_biked, :meters_biked
  end
end
