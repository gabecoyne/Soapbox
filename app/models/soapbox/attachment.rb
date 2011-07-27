class Soapbox::Attachment < ActiveRecord::Base
  has_paper_trail
  has_attached_file :attachment
  acts_as_indexed :fields => [:title, :attachment_file_name, :attachment_content_type, :attachable_type]
  belongs_to :attachable, :polymorphic => true
  def self.content_types
    t = self.find_by_sql(["SELECT DISTINCT(attachment_content_type) FROM attachments"])
    types = []
    t.each do |type|
      short = type.attachment_content_type.split("/").first rescue next
      types.push(short) if types.index(short).nil?
    end
    types
  end
end