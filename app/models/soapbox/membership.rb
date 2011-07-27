class Soapbox::Membership < ActiveRecord::Base
  has_paper_trail
  belongs_to :group
  belongs_to :user
end
