class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :aws
  
  def default_url(*args)
    ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default_track.jpg"].compact.join('_'))
  end
  
  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end
  
  def extension_whitelist
    %w(jpg jpeg png)
  end

  version :thumb do
    process :crop
    resize_to_fill(250, 250)
  end

  version :tiny, from_version: :thumb do
    process resize_to_fill: [25, 25]
  end

  version :large do
    resize_to_fill(600, 600)
  end

  def crop
    if model.crop_x.present?
      resize_to_limit(600, 600)
      manipulate! do |img|
        x = model.crop_x.to_i
        y = model.crop_y.to_i
        w = model.crop_w.to_i
        h = model.crop_h.to_i
        # [[w, h].join('x'),[x, y].join('+')].join('+') => "wxh+x+y"
        img.crop([[w, h].join('x'),[x, y].join('+')].join('+'))
      end
    end
  end
  protected
  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end
end