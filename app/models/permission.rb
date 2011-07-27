class Permission < ActiveRecord::Base
  belongs_to :group
  
  def self.can?(action, object)
    if action.class == "Array"
      !self.where("can in (?) and object=?", action, object).empty?
    else
      !self.where("can=? and object=?", action, object).empty?
    end
  end
  
end