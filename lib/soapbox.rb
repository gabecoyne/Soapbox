# Requires
# require "active_support/dependencies"
require "devise"
require 'formtastic'
require 'paper_trail'
require "will_paginate"
require 'acts-as-taggable-on'
require "friendly_id"
require 'inherited_resources'
require 'acts_as_indexed'
require 'aws/s3'
require "acts_as_tree"
require "acts_as_list"
require "garb"
require "ssl_requirement"
require 'states'
# require 'reduceds3'

require 'paperclip'
require 'soapbox/paperclip' # this adds the paperclip.yml support
require 'polypaperclip'

# load all helpers
Dir[File.dirname(__FILE__) + "/../app/helpers/*.rb"].each {|file| 
  # puts "[soapbox] helper #{file}"
  require file
  ActionView::Base.send :include, eval(file.split("/").last.split(".").first.camelize)
}

# load all soapbox model extensions
Dir["app/models/soapbox/*.rb"].each {|file|
  # puts "[soapbox] model extension #{file}"
  require file
}

module Soapbox

  # Our host application root path
  # We set this when the engine is initialized
  mattr_accessor :app_root

  # Yield self on setup for nice config blocks
  def self.setup
    yield self
  end

end

# Require our engine
require "soapbox/engine"