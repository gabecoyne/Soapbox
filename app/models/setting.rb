class Setting < ActiveRecord::Base
  has_paper_trail  
  acts_as_indexed :fields => [:name, :value, :note]  
  include Soapbox::Setting if File.exists? "app/models/soapbox/setting.rb"
  
  def self.[](name)
    find_or_create_by_name(name).try(:value)
  end
  
  def self.[]=(name, v)
    setting = find_or_create_by_name(name)
    setting.value = (v ? v : "")
    setting.save
    setting.value
  end
end