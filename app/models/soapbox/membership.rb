class Soapbox::Membership < ActiveRecord::Base
  has_paper_trail
  belongs_to :group, :class_name => "::Group"
  belongs_to :user, :class_name => "::User"
end
