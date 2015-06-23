class Hotel < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  belongs_to :city
  has_many :hotel_photos
  accepts_nested_attributes_for :hotel_photos
end
