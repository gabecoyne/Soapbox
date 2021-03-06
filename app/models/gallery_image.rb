class GalleryImage < ActiveRecord::Base
  acts_as_list
  has_attachment :image, :styles => {:large => "1000X1000>", :thumb => "200x200>", :thumb_square => "200x200#" }
  belongs_to :gallery
  default_scope order("position asc")
  include Soapbox::GalleryImage if File.exists? "app/models/soapbox/gallery_image.rb"
end