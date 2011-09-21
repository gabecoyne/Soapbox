class Gallery < ActiveRecord::Base
  has_many :gallery_images, :dependent => :destroy
  belongs_to :galleriable, :polymorphic => true
  include Soapbox::Gallery if File.exists? "app/models/soapbox/gallery.rb"
  
  def self.has_images_for(name)
    self.find_by_name(name).gallery_images.length > 0 rescue false
  end
end