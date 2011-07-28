class Soapbox::Group < ActiveRecord::Base
  has_paper_trail
  has_many :permissions, :dependent => :destroy, :class_name => "::Permission"
  has_many :memberships, :dependent => :destroy, :class_name => "::Membership"
  has_many :users, :through => :memberships, :class_name => "::User"
  
  def can?(action, object)
    begin
      return true if self.permissions.can?("admin","Global")
      return true if self.permissions.can?(action,"Global")
      return true if self.permissions.can?("admin",object)
      return self.permissions.can?(action,object)
    rescue
      false
    end
  end
  
  def permissions_attributes=(permissions)
    self.permissions.delete_all
    permissions.each do |object, hash|
      hash.each do |can,val|
        self.permissions.build({:object => object, :can => can})
      end
    end
  end

end