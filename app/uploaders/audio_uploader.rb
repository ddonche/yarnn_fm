class AudioUploader < CarrierWave::Uploader::Base
  include CarrierWave::Audio
  storage :aws
  
  def extension_whitelist
    %w(mp3)
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