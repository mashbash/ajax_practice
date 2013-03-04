class CreateProfiles < ActiveRecord::Migration
  def change
  	create_table :profiles do |t|
  		t.integer   :user_id
  		t.string 		:type
  		t.timestamp
  	end	
  end
end