class Venue < ActiveRecord::Base
	validates :avatar, presence: true
	validates :title, presence: true
	mount_uploader :avatar, AvatarUploader
	default_value_for :price, 0

	has_many :galleries, dependent: :destroy
	accepts_nested_attributes_for :galleries, allow_destroy: true
end
