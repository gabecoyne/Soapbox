class Soapbox::Menu < ActiveRecord::Base
  has_many :menu_items, :dependent => :destroy, :class_name => "::MenuItem"
end
