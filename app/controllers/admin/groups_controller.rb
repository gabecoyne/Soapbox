class Admin::GroupsController < Admin::AdminController
  def edit
    get_permissions
    super
  end
  def new
    get_permissions
    super
  end
end