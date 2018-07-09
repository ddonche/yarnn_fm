class FileUploader < CarrierWave::Uploader::Base
  storage :aws
  
  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end
  
  def extension_whitelist
    %w(pdf mp3 mp4 wav mobi epub azw wmv avi)
  end

  protected
  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end
end
