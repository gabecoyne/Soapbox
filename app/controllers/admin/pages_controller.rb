class Admin::PagesController < Admin::AdminController
  def link_list
    @pages = Page.all
    render :layout => false
  end
  def index
    redirect_to tree_admin_pages_path
  end
  def root
    redirect_to tree_admin_pages_path
  end
end