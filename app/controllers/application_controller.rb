class ApplicationController < ActionController::Base
  protect_from_forgery
  inherit_resources
  layout :layout
  helper :all
  
  include SslRequirement
  
  def email_form
    # send mail stuff here
    SoapboxMailer.email_form(params).deliver
    flash[:notice] = "Your email has been sent. Thanks."
    redirect_to :back
  end
  
  def after_sign_in_path_for(resource)
    if resource.is_a?(Member)
      goto = home_members_path
    else
      super
    end
  end

private

  def render_404(exception = nil)
    if exception
      logger.info "Rendering 404 with exception: #{exception.message}"
    end

    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/404.html", :status => :not_found, :layout => false }
      format.xml  { head :not_found }
      format.any  { head :not_found }
    end
  end
  
  def render_in_template(obj)
    if (!obj.template.blank? && 
        FileTest.exists?(Rails.root.join('app', 'views', obj.class.to_s.tableize, 'templates', "#{obj.template}.html.erb")))
      render "#{obj.class.to_s.tableize}/templates/#{obj.template}"
    else
      render "#{obj.class.to_s.tableize}/templates/default"
    end
  end
  
  def layout
    # only turn it off for login pages:
    # debugger
    request.path.split("/")[1] == "users" ? "login" : "application"
  end
end
