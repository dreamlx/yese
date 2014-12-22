class Gallery < ActiveRecord::Base
	mount_uploader :image, AvatarUploader
	belongs_to :venue
end
