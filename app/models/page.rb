puts "[soapbox] main page model loaded"
class Page < ActiveRecord::Base
  
  has_paper_trail
  acts_as_indexed :fields => [:title, :body, :area_1, :area_2, :meta_keywords, :meta_description, :nav_label]  
  has_friendly_id :title, :use_slug => true
  
  acts_as_tree :order => "position"
  
  has_many :menu_items, :as => :menuable, :dependent => :destroy
  has_many :galleries, :as => :galleriable
  
  default_scope order("parent_id, position")
  scope :published, where("publish = ? OR (release_at > ? AND expire_at < ?) ", true, Time.zone.now, Time.zone.now)
  
  include Soapbox::Page if File.exists? "app/models/soapbox/page.rb"
  
  def self.homepage
    self.where("homepage=?",true).first
  end
  
  def title_bread_crumb
    title = self.title
    page = self
    i = 0
    until page.parent.nil? || page.parent_id == page.id  || i > 10
      i += 1
      page = page.parent
      title += " &raquo; #{page.title}".html_safe
    end
    title.html_safe
  end
  
  def parents
    parents = [self]
    page = self
    i = 0
    until page.nil? || page.parent_id == page.id  || i > 10
      i += 1
      page = page.parent
      parents << page unless page.nil?
    end
    parents.reverse!
  end
end