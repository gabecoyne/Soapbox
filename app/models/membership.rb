class Membership < ActiveRecord::Base
  has_paper_trail
  belongs_to :group
  belongs_to :user
  include Soapbox::Membership if File.exists? "app/models/soapbox/membership.rb"
end
