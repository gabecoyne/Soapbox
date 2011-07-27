class SitemapController < ApplicationController
  def sitemap
    headers["Content-Type"] = "text/xml"
    # set last modified header to the date of the latest entry.
    headers["Last-Modified"] = Page.published.order("updated_at desc").first.updated_at.httpdate
  end
end