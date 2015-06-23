class AttractionPhoto < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
