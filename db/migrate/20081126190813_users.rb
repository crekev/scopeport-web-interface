class Users < ActiveRecord::Migration
  def self.up
		create_table :users do |t|
			t.string :username, :password, :name
		end
  end

  def self.down
		drop_table :users
  end
end
