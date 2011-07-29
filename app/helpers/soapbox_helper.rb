module SoapboxHelper  
  
  def template_options(dir)
    path = Rails.root.join('app', 'views', dir, 'templates', "*")
    files = Dir.glob(path)
    templates = {}
    files.each do |t|
      key = File.basename(t).split(".").first
      templates[key.titleize] = key
    end
    templates
  end
  
  def app_models
    @m = []
    ActiveRecord::Base.connection.tables.each do |model|
      @m << model unless @permissions["Exclude"]["Models"][model]
    end
    @m
  end
  
  def menuable_models
    @m = []
    ActiveRecord::Base.connection.tables.each do |m|
      @m << m.classify.constantize if m.classify.constantize.first.respond_to?("menu_items") && m != "menus" rescue false
    end
    @m
  end 
  
  def image_attachment(resource, name, size, alt_img, options = {})
    if resource.send("#{name}_attachment").nil? 
		 return image_tag alt_img, options
	  else 
  		return image_tag resource.send(name,size), options
    end 
  end
  
  def id_and_class(item, klass = "")
    html = ""
    html += "class='#{item.class.to_s.tableize.singularize} #{klass}'"
    html += " id='#{item.class.to_s.tableize.singularize}_#{item.id}'"
    html
  end  
  
  def image_field(form, resource, image_name)
    html = ""
	  html += form.input image_name, :as => :file
	  if(!resource.send("#{image_name.to_s}_attachment").nil?)
  	  attachment = resource.send("#{image_name.to_s}_attachment")
      attachment.attachable.send(attachment.attachment_type).options[:styles].each do |style|
        html += "<li><label>#{style.first.to_s.titleize}</label>"
        begin
          html += image_tag(attachment.attachable.send(attachment.attachment_type).url(style.first), :style => "max-width:70%")
        rescue
        end
        html += "</li>"
      end
    end
    html.html_safe
  end
  
  def sortable_tree_list(collection, klass = "sortable")
    html = "<ol class='#{klass}'>"
    collection.each do |item|
      html += "<li id='item_#{item.id}'><div>"
      html += item.title rescue item.name rescue item.id
      html += link_to "x", resource_path(item), :class => "awesome red floatRight", :method => "delete", :confirm => "Are you sure?"
      html += link_to "edit", edit_resource_path(item), :class => "awesome grey floatRight", :style => "margin-right:10px"
      html += link_to "show", eval("#{item.class.to_s.tableize.singularize}_path(item)"), :class => "awesome light floatRight", :style => "margin-right:10px" rescue ""
      html += link_to "- (#{item.children.length})", "javascript:$(this).parent().next().slideToggle();", :class => "awesome light floatRight", :style => "margin-right:10px"
      html += "</div>"
      html += sortable_tree_list(item.children, "") if !item.children.empty?
      html += "</li>"
    end
    html += "</ol>"
    html.html_safe
  end
  
  def flash_messages
    html = ""
		html += '<div class="notice">'+notice+'</div>' if notice 
		html += '<div class="alert">'+alert+'</div>' if alert 
		html.html_safe
  end  
  
  def sortable_tree_list(collection, klass = "sortable")
    html = "<ol class='#{klass}'>"
    collection.each do |item|
      html += "<li id='item_#{item.id}'><div>"
      html += item.title rescue item.name rescue item.id
      html += link_to "x", resource_path(item), :class => "awesome red floatRight", :method => "delete", :confirm => "Are you sure?"
      html += link_to "edit", edit_resource_path(item), :class => "awesome grey floatRight", :style => "margin-right:10px"
      html += link_to "show", eval("#{item.class.to_s.tableize.singularize}_path(item)"), :class => "awesome light floatRight", :style => "margin-right:10px" rescue ""
      html += link_to "-", "javascript:;", :onclick => "$(this).parent().next().slideToggle();", :class => "awesome light floatRight", :style => "margin-right:10px"
      html += "</div>"
      html += sortable_tree_list(item.children, "") if !item.children.empty?
      html += "</li>"
    end
    html += "</ol>"
    html.html_safe
  end
  
  def gallery_manager(resource, name)
    if params[:action] == "edit"
      @gallery = resource.galleries.find_or_create_by_name(name)
  	  render "admin/galleries/manager" 
	  end
  end
  
  def editable(resource, field = "body")
    html = ""
    html += link_to ("Edit", admin_wysiwyg_path(resource.class.to_s, resource.id, field), :class => "floatRight awesome light small", :target => "_blank") if current_user
    # here is where short codes can go
    html += resource.send(field) || ""
    html.html_safe
  end
  
end