class Soapbox::Menu < ActiveRecord::Base
  has_many :menu_items, :dependent => :destroy
end
