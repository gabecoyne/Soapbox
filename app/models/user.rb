class User < ActiveRecord::Base
  has_paper_trail
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :super_admin, :remember_me, :group_ids
  acts_as_indexed :fields => [:email]
  
  has_many :memberships, :dependent => :destroy
  has_many :groups, :through => :memberships
  include Soapbox::User if File.exists? "app/models/soapbox/user.rb"
  
  def can?(action, object)
    return true if self.super_admin?
    begin
      self.permissions.can?(action, object)
    rescue
      false
    end
  end
  
  def permissions
    Permission.where("group_id in (?)", self.groups)
  end
  
  def created?(object)
    # look up the papertrail to see if this user created this object
  end
end
