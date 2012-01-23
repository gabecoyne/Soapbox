class Admin::GalleryImagesController < Admin::AdminController
  belongs_to :gallery

  def create
    create! do |success, failure|
      success.js {
        render :json => { 
            :id => resource.id,
            :gallery_id => resource.gallery_id
          }, 
          :content_type => 'text/html'
      }
      failure.js { 
        render :json => { :result => 'error'}, :content_type => 'text/html'
      }
      # IE sends post as html... lame
      success.html {
        render :json => { 
            :id => resource.id,
            :gallery_id => resource.gallery_id
          }, 
          :content_type => 'text/html'
      }
      failure.html { 
        render :json => { :result => 'error'}, :content_type => 'text/html'
      }
    end
  end
  
  def update
    update! do |success, failure|
      success.html{ redirect_to edit_admin_gallery_path(resource.gallery) }
      success.js{ render :js => "flash_notice('Updated Successfully')" }
    end
  end
  
  def image
    render :partial => "admin/galleries/image", :locals => {:image => GalleryImage.find(params[:gallery_image_id])}, :layout => false
  end
  
end