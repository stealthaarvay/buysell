class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string "provider"
      t.string "oauth_uid"
      t.string "email", :default => "", :null => false
      t.string "first_name"
      t.string "last_name"
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end