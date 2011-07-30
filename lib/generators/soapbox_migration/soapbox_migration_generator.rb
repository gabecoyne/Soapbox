# Requires
require 'rails/generators'
require 'rails/generators/migration'

class SoapboxMigrationGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  def self.source_root
    @source_root ||= File.join(File.dirname(__FILE__), 'templates')
  end

  def self.next_migration_number(dirname)
    if ActiveRecord::Base.timestamped_migrations
      Time.new.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end

  def create_migration_file
    migration_template 'migration.rb', 'db/migrate/create_soapbox_tables.rb'    
    puts "make sure to run - rake db:migrate"
    puts "you'll also want to add a super admin so you can login to /admin"
    puts "rails c"
    puts 'User.create(:email => "your@email.address", :password => "xxxxxx", :super_user => true)'
  end
end
