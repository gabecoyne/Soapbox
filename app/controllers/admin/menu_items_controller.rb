class Admin::MenuItemsController < Admin::AdminController
  
  belongs_to :menu
  
  def index
    redirect_to admin_menus_path
  end
  
  def update
    update! do |success, failure|
     success.html { redirect_to admin_menus_path }
    end
  end
  
end
