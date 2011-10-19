class Admin::AdminController < ApplicationController
  protect_from_forgery
  before_filter :authenticate_user!
  layout "admin"
  
  def save_order
    m = eval(params[:model])
    m.update_all({ :position => nil })
    params[:order].each_with_index do |id,i|
      p = m.find(id).update_attribute("position", i)
    end
    render :js => "flash_notice('Order Updated')"
  end
  
  def save_tree
    m = eval(params[:model])
    params[:data].each_pair do |position,fields|
      parent_id = nil if (parent_id == "none" || parent_id == "root")
      m.find_by_id(fields[:item_id]).update_attributes({:parent_id => fields[:parent_id], :position => position}) rescue nil
    end
    render :js => "flash_notice('Tree Positions Saved')"
  end
  
  def tree
    if collection.empty?
      flash[:notice] = "create your first #{params[:controller].gsub('admin/', '').singularize.titleize}"
      return redirect_to url_for(:controller => params[:controller], :action => "new")
    end
    render "admin/shared/tree"    
  end
  
  def order
    render "admin/shared/order"    
  end
  
  def new
     super do |format|
       format.html { render "form" }
     end
   end
   
   def create
     create! do |success, failure|
       success.html { redirect_to edit_resource_url(resource) }
       failure.html { render "form" }
       success.js{ render :js => "flash_notice('Created Successfully')" }
       failure.js{ render :js => "flash_error('Create Failed')" }
     end
   end

   def edit
     super do |format|
       format.html { render "form" }
     end
   end

   def update
     update! do |success, failure|
       success.html { redirect_to edit_resource_url(resource) }
       success.js{ 
         unless params[:success].nil?
           render :js => params[:success] 
         else
           render :js => "flash_error('Updated Successfully')" 
         end         
       }
       failure.html { render "form" }
       failure.js{          
         unless params[:failure].nil?
           render :js => params[:failure] 
         else
           render :js => "flash_error('Update Failed')" 
         end 
       }
     end
   end
   
   def wysiwyg
      m = eval(params[:model].camelize)
      @resource = m.find(params[:id])
      render "admin/shared/wysiwyg", :layout => "admin_blank"
   end

   def destroy
     super do |format|
       format.html { redirect_to :back }
       format.js{ render :js => "$('##{resource.class.to_s.tableize.singularize}_#{resource.id}').remove(); flash_notice('Item Deleted')" }
     end
   end
   
protected
  def collection
    # only show stuff created by me if that is my permissions
    if(current_user.can?("admin_their_own","Model#{resource_class.to_s}") && !current_user.can?("admin","Model#{resource_class.to_s}"))
      created_by_current_user = Version.where("whodunnit=? and event=? and item_type=?",current_user,"create",resource_class.to_s)
      @resources = end_of_association_chain.where("ids in (?)", created_by_current_user.map(&:item_id)).order(params[:order]) 
    else
      @resources = end_of_association_chain.order(params[:order]) 
    end
    @resources = [] if @resources.nil?
    # @resources.order(params[:order]) unless @resources.class == Array
    if params[:s] && params[:s] != ""
      if end_of_association_chain.respond_to?("search")
        @resources = @resources.search(params[:s])
      elsif end_of_association_chain.respond_to?("with_query")
        @resources = @resources.with_query(params[:s])
      end
    end
    @all_resources = @resources
    @resources.paginate(:page => params[:page], :per_page => 20)
  end
  def get_permissions    
    @permissions = YAML::load(File.open("#{::Rails.root.to_s}/config/permissions.yml"))
  end
end