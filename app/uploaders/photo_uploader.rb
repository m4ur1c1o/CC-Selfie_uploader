class PhotoUploader < CarrierWave::Uploader::Base
  # ...
  include CarrierWave::MiniMagick

  # Que tipo de strorage usará este uploader

  def store_dir
  	'public/img'
  end

  storage :file
  # Versiones del archivo ...

  version :thumb do
    process resize_to_fit: [200,200]
  end

  #Que extensiones vas a aceptar
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end