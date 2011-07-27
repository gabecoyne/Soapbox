class Soapbox::Group < ActiveRecord::Base
  has_paper_trail
  has_many :permissions, :dependent => :destroy
  has_many :memberships, :dependent => :destroy
  has_many :users, :through => :memberships
  
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