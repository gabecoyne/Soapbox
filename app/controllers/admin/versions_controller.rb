class Admin::VersionsController < Admin::AdminController
  def index
    params[:order] = "created_at desc" unless params[:order]
    super
  end
end