class RedirectsController < ApplicationController
  def show
    unless Redirect.find_by_source(params[:path]).nil?
      return redirect_to "/"+Redirect.find_by_source(params[:path]).destination
    end
    render_404
  end
end