class CreateCategoriesItemsJoin < ActiveRecord::Migration
  def self.up
  	create_table :categories_items, :id => false do |t|
  		t.integer "category_id"
  		t.integer "page_id"
  	end
  	add_index :categories_items, ["category_id", "page_id"]
  end

  def self.down
  	drop table :categories_items
  end
end
