class Admin::PagesController < Admin::AdminController
  def edit
    @page = Page.find(params[:id])
    render :form
  end
  def link_list
    @pages = Page.all
    render :layout => false
  end
  def root
    redirect_to tree_admin_pages_path
  end
end