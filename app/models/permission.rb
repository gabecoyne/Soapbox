class Permission < ActiveRecord::Base
  belongs_to :group
  include Soapbox::Group if File.exists? "app/models/soapbox/group.rb"
  
  def self.can?(action, object)
    if action.class == "Array"
      !self.where("can in (?) and object=?", action, object).empty?
    else
      !self.where("can=? and object=?", action, object).empty?
    end
  end
end