class Category < ActiveRecord::Base
  has_paper_trail
  acts_as_tree :order => "position"
  has_friendly_id :title, :use_slug => true
end