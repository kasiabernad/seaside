class Attraction < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  belongs_to :city
  has_many :attraction_photos
  accepts_nested_attributes_for :attraction_photos
  mount_uploader :picture, PictureUploader
end
