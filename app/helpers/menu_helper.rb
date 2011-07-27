module MenuHelper
  def menu_nav(name)
    items = Menu.find_by_name(name).menu_items
    html = ""
  	html << "<ul id='#{ name }_nav'>"
    items.each do |item|
      html << "<li>"
      if item.menuable_id.nil?
        html << link_to(item.label_text, eval("#{item.menuable_type.tableize}_path()"))
      else
        m = item.menuable
        if item.link != "" && !item.link.nil?
          html << link_to(item.label_text, item.link)
        elsif m.class == Page && m.homepage?
          html << link_to(item.label_text, "/")
        else
          html << link_to(item.label_text, eval("#{m.class.to_s.tableize.singularize}_path(m)"))
        end
        html << page_nav(m.children) if m.class == Page && !m.children.empty?
      end      
      html << "</li>"
    end
    html << "</ul>"
    html.html_safe
  end
end
