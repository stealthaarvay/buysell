class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer "user_id"
      t.string "name"
      t.float "price"
      t.text "description"
      t.boolean "isbuy"
      t.string "status"
      t.boolean "isnegotiable"
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
