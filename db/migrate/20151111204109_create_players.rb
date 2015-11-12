class CreatePlayers < ActiveRecord::Migration
  def change
  	  create_table :players do |t|
  		t.string	:name
  		t.integer	:age
  		t.string	:sex

  		t.timestamps
  	end
  end
end