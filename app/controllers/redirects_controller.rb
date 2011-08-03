class RedirectsController < ApplicationController
  def show
    return redirect_to "/"+Redirect.find_by_source(params[:path]).destination rescue header("HTTP/1.0 404 Not Found");
  end
end