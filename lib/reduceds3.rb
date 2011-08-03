require 'aws/s3'
require 'paperclip'
require 'paperclip/storage/s3'

# allow us to define Amazon storage type to use on Amazon for each style, by introducing a 's3_reduced' key
#
# Example:
#
# has_attached_file :image,
# :storage => :reduceds3,
# :s3_credentials => Rails.root.join("config/s3.yml"),
# :s3_permissions => 'public-read',
# :s3_protocol => 'http',
# :path          => ":id.:style.:extension"
# :styles => {
#   :original => {:geometry => "500x375>", :s3_reduced => false},
#   :large => {:geometry => "300x250", :format => :png, :s3_reduced => true},
#   :small => {:geometry => "100x75", :format => :png, :s3_reduced => true}
# },
# :processors => [:thumbnail],
# :default_style => :original

module Paperclip
  module Storage
    module Reduceds3
      def self.extended base
        base.extend(S3)
        base.class_eval do
          def flush_writes #:nodoc:
            @queued_for_write.each do |style, file|
              begin
                # FIX OLIVIER : we personnalize headers
                s3_headers = @s3_headers ? @s3_headers.dup : {}
                if @options[:styles][style][:s3_reduced]
                  s3_headers['x-amz-storage-class'] = 'REDUCED_REDUNDANCY'
                end
                # puts "HEADERS: #{s3_headers.inspect}"
                log("saving #{path(style)}")
                AWS::S3::S3Object.store(path(style),
                file,
                bucket_name,
                {:content_type => instance_read(:content_type),
                  :access => @s3_permissions,
                }.merge(s3_headers))
              rescue AWS::S3::NoSuchBucket => e
                create_bucket
                retry
              rescue AWS::S3::ResponseError => e
                raise
              end
            end
            @queued_for_write = {}
          end
        end
      end
    end
  end
end