class AudioUploader < CarrierWave::Uploader::Base
  include CarrierWave::Audio
  storage :aws

  process convert: [output_options: { compression: 320 }]

  def full_filename(for_file)
    "#{super.chomp(File.extname(super))}.mp3"
  end

  def extension_whitelist
    %w(mp3 wav ogg)
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
