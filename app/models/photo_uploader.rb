class PhotoUploader < CarrierWave::Uploader::Base
  def serializable_hash
    model.read_attribute :cover_picture
  end
end