class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :name
  		t.string :email
  		t.integer :zipcode
  		t.integer :score
  		t.string :moves_access_token
  		t.string :moves_refresh_token
  	end
  end
end
