
class ProfilePictureUploader < CarrierWave::Uploader::Base
  storage :file # or :fog for AWS S3 or other cloud storage

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
