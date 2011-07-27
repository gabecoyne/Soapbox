module PluginHelper
  def plugin_nav(parent = nil, id = nil)
  	if parent.nil?
  	  plugins = Plugin.active.where("parent_id is ?", parent)
	  else
  	  plugins = Plugin.active.where("parent_id=?", parent)
    end
    html = ""
  	html << "<ul id='#{ id || "" }'>"
    permissions = YAML::load(File.open("#{RAILS_ROOT}/config/permissions.yml"))
    plugins.each do |plugin|
      next if permissions[plugin] && !current_user.can?(["admin","create"],plugin)
      html << "<li #{ plugin.children.empty? ? "" : "class='has_sub'" }>"
      html << link_to(plugin.title, (eval(plugin.route) rescue "#bad_route"))
      html << plugin_nav(plugin.id) if !plugin.children.empty?
      html << "</li>"
    end
    html << "</ul>"
    html.html_safe
  end
end
