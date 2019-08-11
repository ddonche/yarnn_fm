class BlogimageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :aws
  
  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end
  
  def extension_whitelist
    %w(png jpg jpeg)
  end

  version :thumb do
    process :crop
    resize_to_fill(217, 105)
  end

  version :tiny, from_version: :thumb do
    process resize_to_fill: [62, 30]
  end

  version :large do
    resize_to_fill(620, 300)
  end

  def crop
    if model.crop_x.present?
      resize_to_limit(620, 300)
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