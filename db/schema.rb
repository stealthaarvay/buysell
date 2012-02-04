# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120131195507) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_items", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "page_id"
  end

  add_index "categories_items", ["category_id", "page_id"], :name => "index_categories_items_on_category_id_and_page_id"

  create_table "items", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.float    "price"
    t.text     "description"
    t.boolean  "isbuy"
    t.string   "status"
    t.boolean  "isnegotiable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items_tags", :id => false, :force => true do |t|
    t.integer "item_id"
    t.integer "tag_id"
  end

  add_index "items_tags", ["item_id", "tag_id"], :name => "index_items_tags_on_item_id_and_tag_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.integer  "fb_uid"
    t.string   "email",      :default => "", :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
