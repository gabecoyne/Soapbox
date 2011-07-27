class Soapbox::Content < ActiveRecord::Base
  has_paper_trail
  # belongs_to :contentable, :polymorphic => true
  validate :name, :unique => true
  acts_as_indexed :fields => [:body, :key, :note]
  
  def self.[](key)
    find_or_create_by_key(key).try(:body)
  end
  
  def self.named(key)
    find_or_create_by_key(key)
  end
  
  def self.[]=(key, v)
    setting = find_or_create_by_key(key)
    setting.value = (v ? v : "")
    setting.save
    setting.value
  end
  
  # usage @page.contents[:sidebar]
  # usage @page.contents[:summary]
  
end
