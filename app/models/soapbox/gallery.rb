class Soapbox::Gallery < ActiveRecord::Base
  has_many :gallery_images, :class_name => "::GalleryImage"
  belongs_to :galleriable, :polymorphic => true
  
  def self.has_images_for(name)
    self.find_by_name(name).gallery_images.length > 0 rescue false
  end
end