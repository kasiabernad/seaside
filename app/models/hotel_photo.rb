class HotelPhoto < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  belongs_to :hotel
end
