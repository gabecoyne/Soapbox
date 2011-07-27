class RedirectsController < ApplicationController
  def show
    return redirect_to "/"+Redirect.find_by_source(params[:path]).destination
  end
end