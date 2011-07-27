class PagesController < ApplicationController
  def show
    if(params[:id].nil?) 
      @page = Page.homepage
    else 
      @page = Page.find(params[:id])
    end
    return redirect_to @page.redirect if @page.redirect != "" && !@page.redirect.nil?
    render_in_template(@page)
  end
  
  def error_404
    respond_to do |type| 
      type.html { render :status => 404 }
      type.all  { render :nothing => true, :status => 404 } 
    end
  end
end