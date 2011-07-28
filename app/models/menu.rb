class Menu < ActiveRecord::Base
  has_many :menu_items, :dependent => :destroy
  include Soapbox::Menu if File.exists? "app/models/soapbox/menu.rb"
end
