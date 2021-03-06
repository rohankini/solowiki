# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 0) do
  create_table "tiddler_versions", :force => true do |t|
    t.column "tiddler_id", :integer
    t.column "version", :integer
    t.column "title", :string, :default => "", :null => false
    t.column "modifier", :string, :default => "", :null => false
    t.column "body", :text
    t.column "tags", :text
    t.column "updated_on", :datetime, :null => false
    t.column "created_on", :datetime, :null => false
    t.column "private", :integer, :limit => 1, :default => 0
  end

  add_index "tiddler_versions", ["tiddler_id"], :name => "tiddler_versions_tiddler_id_index"

  create_table "tiddlers", :force => true do |t|
    t.column "title", :string, :default => "", :null => false
    t.column "modifier", :string, :default => "", :null => false
    t.column "body", :text
    t.column "tags", :text
    t.column "updated_on", :datetime, :null => false
    t.column "created_on", :datetime, :null => false
    t.column "private", :boolean, :default => false
    t.column "version", :integer, :default => 0
  end

  add_index "tiddlers", ["title"], :name => "name"
  add_index "tiddlers", ["created_on"], :name => "created_on"
  add_index "tiddlers", ["updated_on"], :name => "updated_on"
  add_index "tiddlers", ["private"], :name => "tiddlers_private_index"
end
