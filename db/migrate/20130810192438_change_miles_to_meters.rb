class ChangeMilesToMeters < ActiveRecord::Migration
  def change
  	rename_column :events, :miles_walked, :meters_walked
  	rename_column :events, :miles_biked, :meters_biked
    rename_column :events, :distance, :meters_driven
  end
end
