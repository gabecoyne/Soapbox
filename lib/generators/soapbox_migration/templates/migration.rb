class CreateSoapboxTables < ActiveRecord::Migration
  
  def self.up

    create_table "attachments", :force => true do |t|
      t.string   "title"
      t.string   "attachment_file_name"
      t.string   "attachment_content_type"
      t.integer  "attachment_file_size"
      t.datetime "attachment_updated_at"
      t.string   "attachable_type"
      t.integer  "attachable_id"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "attachment_type"
    end

    add_index "attachments", ["id"]
  
    create_table "contents", :force => true do |t|
      t.string   "contentable_type"
      t.integer  "contentable_id"
      t.string   "key"
      t.string   "note"
      t.text     "body"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "contents", ["id"], :name => "index_contents_on_id"

    create_table "galleries", :force => true do |t|
      t.string   "name"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "galleriable_id"
      t.string   "galleriable_type"
    end

    add_index "galleries", ["galleriable_id", "galleriable_type"], :name => "index_galleries_on_galleriable_id_and_galleriable_type"
    add_index "galleries", ["id"], :name => "index_galleries_on_id"

    create_table "gallery_images", :force => true do |t|
      t.integer  "gallery_id"
      t.string   "caption"
      t.integer  "position"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "gallery_images", ["id"], :name => "index_gallery_images_on_id"

    create_table "groups", :force => true do |t|
      t.string   "name"
      t.string   "details"
      t.string   "group_type"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "groups", ["id"], :name => "index_groups_on_id"

    create_table "members", :force => true do |t|
      t.string   "email",                               :default => "", :null => false
      t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
      t.string   "password_salt",                       :default => "", :null => false
      t.string   "reset_password_token"
      t.string   "remember_token"
      t.datetime "remember_created_at"
      t.integer  "sign_in_count",                       :default => 0
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.string   "current_sign_in_ip"
      t.string   "last_sign_in_ip"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "members", ["email"], :name => "index_members_on_email", :unique => true
    add_index "members", ["reset_password_token"], :name => "index_members_on_reset_password_token", :unique => true

    create_table "memberships", :force => true do |t|
      t.integer  "user_id"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "group_id"
    end

    add_index "memberships", ["group_id", "user_id"], :name => "index_memberships_on_group_id_and_user_id"

    create_table "menu_items", :force => true do |t|
      t.integer  "menu_id"
      t.string   "label"
      t.string   "link"
      t.integer  "position"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "menuable_type"
      t.integer  "menuable_id"
    end

    create_table "menus", :force => true do |t|
      t.string   "name"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "menus", ["id"]

    create_table "pages", :force => true do |t|
      t.string   "title"
      t.string   "meta_keywords"
      t.string   "meta_description"
      t.integer  "parent_id"
      t.string   "redirect"
      t.string   "nav_label"
      t.integer  "position"
      t.string   "template"
      t.datetime "release_at"
      t.datetime "expire_at"
      t.boolean  "private"
      t.boolean  "publish"
      t.boolean  "homepage"
      t.text     "body"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.text     "area_1"
      t.text     "area_2"
    end

    add_index "pages", ["id"], :name => "index_pages_on_id"
    add_index "pages", ["parent_id"], :name => "index_pages_on_parent_id"

    create_table "permissions", :force => true do |t|
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "can"
      t.integer  "group_id"
      t.string   "object"
    end

    add_index "permissions", ["id"]

    create_table "plugins", :force => true do |t|
      t.string   "title"
      t.string   "route"
      t.integer  "parent_id"
      t.boolean  "active"
      t.integer  "position"
      t.string   "note"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "plugins", ["id"], :name => "index_plugins_on_id"

    create_table "redirects", :force => true do |t|
      t.string   "source"
      t.string   "destination"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "redirects", ["id"]

    create_table "settings", :force => true do |t|
      t.string   "name"
      t.string   "value"
      t.string   "note"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "settings", ["id"], :name => "index_settings_on_id"
    add_index "settings", ["name"], :name => "index_settings_on_name"

    create_table "slugs", :force => true do |t|
      t.string   "name"
      t.integer  "sluggable_id"
      t.integer  "sequence",                     :default => 1, :null => false
      t.string   "sluggable_type", :limit => 40
      t.string   "scope"
      t.datetime "created_at"
    end

    add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

    create_table "taggings", :force => true do |t|
      t.integer  "tag_id"
      t.integer  "taggable_id"
      t.string   "taggable_type"
      t.integer  "tagger_id"
      t.string   "tagger_type"
      t.string   "context"
      t.datetime "created_at"
    end

    add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"

    create_table "tags", :force => true do |t|
      t.string "name"
    end

    create_table "users", :force => true do |t|
      t.string   "email",                                              :null => false
      t.string   "encrypted_password",   :limit => 128,                :null => false
      t.string   "password_salt",                                      :null => false
      t.string   "reset_password_token"
      t.string   "remember_token"
      t.datetime "remember_created_at"
      t.integer  "sign_in_count",                       :default => 0
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.string   "current_sign_in_ip"
      t.string   "last_sign_in_ip"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.boolean  "super_admin"
    end

    add_index "users", ["email"], :name => "index_users_on_email", :unique => true
    add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

    create_table "versions", :force => true do |t|
      t.string   "item_type",  :null => false
      t.integer  "item_id",    :null => false
      t.string   "event",      :null => false
      t.string   "whodunnit"
      t.text     "object"
      t.datetime "created_at"
    end

    add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"
    
    Plugin.create(:title => "Pages", :route => "admin_pages_path", :active => true)
    Plugin.create(:title => "Users", :route => "admin_users_path", :active => true)
    Plugin.create(:title => "Files", :route => "admin_attachments_path", :active => true)
    
    Plugin.create(:title => "Menus", :route => "admin_menus_path", :active => true, :parent_id => Plugin.find_by_title("Pages").id)
    Plugin.create(:title => "Redirects", :route => "admin_redirects_path", :active => true, :parent_id => Plugin.find_by_title("Pages").id)
    Plugin.create(:title => "Organize", :route => "tree_admin_pages_path", :active => true, :parent_id => Plugin.find_by_title("Pages").id)
    
    Plugin.create(:title => "Groups", :route => "admin_groups_path", :active => true, :parent_id => Plugin.find_by_title("Users").id)
    Plugin.create(:title => "Members", :route => "admin_members_path", :active => true, :parent_id => Plugin.find_by_title("Users").id)
    
    Setting.create({:name => "site_name", :value => "Soapbox Site"})
    Setting.create({:name => "admin_email", :value => "info@mydomain.com"})
    Setting.create({:name => "copyright", :value => "Soapbox CMS"})
    
    Page.create({:title => "Home", :body => "Welcome", :homepage => true})
    
  end
  
  def self.down
    drop_table :attachments
    drop_table :contents
    drop_table :galleries
    drop_table :gallery_images
    drop_table :groups
    drop_table :members
    drop_table :memberships
    drop_table :menus
    drop_table :menu_items
    drop_table :pages
    drop_table :permissions
    drop_table :plugins
    drop_table :redirects
    drop_table :settings
    drop_table :slugs
    drop_table :taggings
    drop_table :tags
    drop_table :users
    drop_table :versions
  end

end