class Gallary < ActiveRecord::Base
	mount_uploader :image1, ImageUploader
	mount_uploader :image2, ImageUploader
end
