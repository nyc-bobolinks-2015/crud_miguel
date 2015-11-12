class CreateSessions < ActiveRecord::Migration
  def change
  	create_table :sessions do |t|
  		t.references	:game
  		t.references	:player
  		t.integer			:playtime

  		t.timestamps
  	end
  end
end