class ChangeEventAttributes < ActiveRecord::Migration
  def change
  	remove_column :events, :kind
  	remove_column :events, :start_time
  	remove_column :events, :end_time

  	add_column :events, :score, :integer
  	add_column :events, :miles_walked, :integer
  	add_column :events, :miles_biked, :integer
  	add_column :events, :carbon_footprint, :integer
  	add_column :events, :calories, :integer
  end
end
