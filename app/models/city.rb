class City < ActiveRecord::Base
  mount_uploader :cover_picture, PictureUploader
  mount_uploader :logo_picture, PictureUploader
  has_many :hotels
  has_many :attractions
  has_one :branding
end
