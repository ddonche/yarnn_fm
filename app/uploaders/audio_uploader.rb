class AudioUploader < CarrierWave::Uploader::Base
   include CarrierWave::Audio
  storage :aws
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  
  def extension_whitelist
    %w(mp3)
  end
  
  def size_range
    1..1.megabytes
  end
  
  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end
  
  protected
  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end
end