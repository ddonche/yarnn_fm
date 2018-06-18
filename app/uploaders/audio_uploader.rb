class AudioUploader < CarrierWave::Uploader::Base
   include CarrierWave::Audio
  storage :file
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  
  def extension_whitelist
    %w(mp3)
  end
end