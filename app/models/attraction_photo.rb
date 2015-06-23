class AttractionPhoto < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  belongs_to :attraction
end
