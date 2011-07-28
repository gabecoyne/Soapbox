class MenuItem < ActiveRecord::Base
  belongs_to :menu
  belongs_to :menuable, :polymorphic => true
  acts_as_list
  default_scope order("position asc")
  include Soapbox::MenuItem if File.exists? "app/models/soapbox/menu_item.rb"
  
  def label_text   
    link_label = self.label rescue nil
    link_label = nil if link_label == ""
    link_label = self.menuable.title rescue nil if link_label.nil?
    link_label = self.menuable.nav_label rescue nil if link_label.nil?
    link_label = self.menuable.name rescue nil if link_label.nil?
    link_label = self.menuable_type.titleize.pluralize rescue nil if link_label.nil?
    link_label
  end
end
