# CURRENT FILE :: lib/team_page/engine.rb
module Soapbox

  class Engine < Rails::Engine

    initialize "soapbox.load_app_instance_data" do |app|
      TeamPage.setup do |config|
        config.app_root = app.root
      end
    end

    initialize "soapbox.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end

  end

end
