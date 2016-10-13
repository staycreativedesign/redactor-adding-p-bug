class Business < ActiveRecord::Base
  mount_uploader :logo, BusinessLogoUploaderUploader

end
