module Soapbox

  class Engine < Rails::Engine

    initializer "soapbox.load_app_instance_data" do |app|
      Soapbox.setup do |config|
        config.app_root = app.root
      end
    end

    initializer "soapbox.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end

  end

end
