class CreateGames < ActiveRecord::Migration
  def change
  	create_table :games do |t|
  		t.string	:name
  		t.integer	:player_count
  		t.integer	:avg_length
  		t.string	:description

  		t.timestamps
  	end
  end
end
