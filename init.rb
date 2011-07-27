# includes all helpers
Dir[File.dirname(__FILE__) + "/app/helpers/*.rb"].each {|file| 
  require file
  ActionView::Base.send :include, eval(file.split("/").last.split(".").first.camelize)
}

require File.join(File.dirname(__FILE__),'lib', 'paperclip.rb')