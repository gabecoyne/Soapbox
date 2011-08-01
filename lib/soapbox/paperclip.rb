module Paperclip
  class Attachment
    def self.default_options
      #Credit http://www.jonathanspies.com/posts/6-Using-yaml-to-configure-default-options-for-Paperclip
      # look for paperclip environment overrides in paperclip.yml
      return @default_options if @default_options

      @default_options = {
        :url                   => "/system/:attachment/:id/:style/:filename",
        :path                  => ":rails_root/public:url",
        :styles                => {},
        :only_process          => [],
        :processors            => [:thumbnail],
        :convert_options       => {},
        :default_url           => "/:attachment/:style/missing.png",
        :default_style         => :original,
        :storage               => :filesystem,
        :use_timestamp         => true,
        :use_default_time_zone => true,
        :hash_digest           => "SHA1",
        :hash_data             => ":class/:attachment/:id/:style/:updated_at",
        :preserve_files        => false
      }

      if defined?(::Rails.root.to_s) and File.exists?("#{::Rails.root.to_s}/config/paperclip.yml")
        @default_options.merge!(YAML.load_file("#{::Rails.root.to_s}/config/paperclip.yml")[RAILS_ENV].symbolize_keys) rescue nil
      end
      
    end
  end
end