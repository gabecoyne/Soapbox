module PageHelper
  def breadcrumb(page)
    html = ""
    while page = page.parent
      html = "#{link_to page_path(page)} <span>&raquo;</span> #{html}"
    end
    html.html_safe
  end
  def page_nav(pages = Page.where("parent_id is ?", nil), id = nil)
    html = ""
  	html << "<ul id='#{ id || "" }'>"
    pages.each do |page|
      html << "<li>"
      html << link_to(page.nav_label != "" ? page.nav_label : page.title, page.homepage? ? "/" : page_path(page))
      html << page_nav(page.children) if !page.children.empty?
      html << "</li>"
    end
    html << "</ul>"
    html.html_safe
  end
end
