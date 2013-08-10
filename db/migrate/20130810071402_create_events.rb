class CreateEvents < ActiveRecord::Migration
  def change
  	create_table :events do |t|
  		t.string :kind
  		t.integer :distance
  		t.date :start_time
  		t.date :end_time
  	end
  end
end
