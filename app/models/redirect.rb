class Redirect < ActiveRecord::Base
  include Soapbox::Redirect if File.exists? "app/models/soapbox/redirect.rb"
end
