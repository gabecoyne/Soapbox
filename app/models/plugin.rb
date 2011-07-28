class Plugin < ActiveRecord::Base
  has_paper_trail
  acts_as_tree :order => "position,title"
  default_scope order("position")
  scope :active, where("active is not ?", nil)
  scope :permitable, where("active is not ? and parent_id is ?", nil, nil)
  include Soapbox::Plugin if File.exists? "app/models/soapbox/plugin.rb"
end