class Picture < ApplicationRecord
	# validates :image_data, presence: true, uniqueness: true


	# not too sure what it does yet, should check docs
	include ImageUploader[:image]

	has_and_belongs_to_many :posts
	belongs_to :user

end
