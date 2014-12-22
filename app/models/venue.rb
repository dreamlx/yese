class Venue < ActiveRecord::Base
	validates :avatar, presence: true
	mount_uploader :avatar, AvatarUploader
	default_value_for :price, 0
end
