class SoapboxScaffoldGenerator < Rails::Generators::NamedBase
  
  argument :attributes, :type => :array, :default => [], :banner => "field:type field:type"
  
  def self.source_root
    File.join(File.dirname(__FILE__), 'templates')
  end
  
  def manifest
      # Copy controller, model and migration
      directories = [
        "app",
        "app/controllers",
        "app/controllers/admin", 
        "app/views",
        "app/views/admin",
        "app/models", 
        "app/helpers",
        "config",
        "db",
        "db/migrate"
      ]      

      directories.each do |dir|
        empty_directory dir
      end
      
      template "admin_controller.rb", "app/controllers/admin/#{plural_name}_controller.rb"
      template "controller.rb", "app/controllers/#{plural_name}_controller.rb"
      template "model.rb", "app/models/#{singular_name}.rb"
      
      # Create migration
      migration_name = "#{Time.new.utc.strftime("%Y%m%d%H%M%S")}_create_#{singular_name.pluralize}.rb"
      template 'migration.rb', "db/migrate/#{migration_name}"
      
      # Create view directory
      admin_view_dir = File.join("app/views/admin", plural_name)
      empty_directory admin_view_dir
      
      # Copy in all views
      admin_view_files = ['form.html.erb', 'index.html.erb' ]
      admin_view_files.each do |view_file|
        template "views/admin/#{view_file}", "#{admin_view_dir}/#{view_file}"
      end
      
      # Create view directory
      view_dir = File.join("app/views", plural_name)
      empty_directory view_dir
      
      # Copy in all views
      view_files = ['show.html.erb', 'index.html.erb' ]
      view_files.each do |view_file|
        template "views/#{view_file}", "#{view_dir}/#{view_file}"
      end
      
      # Add resources to routes.rb
      look_for = "# Resources"
      gsub_file('config/routes.rb', /(#{Regexp.escape(look_for)})/mi){|match| "#{match}\n   resources :#{plural_name}, :only => [:index, :show]"}
      look_for = "# Admin Resources"
      gsub_file('config/routes.rb', /(#{Regexp.escape(look_for)})/mi){|match| "#{match}\n     resources :#{plural_name}"}
      
      Plugin.create({ :title => plural_name.titleize, :route => "admin_#{plural_name}_path", :active => true})
      
      puts "IMPORTANT"
      puts "---------------------------------------"
      puts "Now run 'rake db:migrate' to add the table to the DB"
      puts "---------------------------------------"
  end
end