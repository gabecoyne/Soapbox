class Comment < ActiveRecord::Base
  has_paper_trail
  belongs_to :commentable, :polymorphic => true
  acts_as_indexed :fields => [:comment]
end