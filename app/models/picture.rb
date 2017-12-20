class Picture < ApplicationRecord
	validates :url, presence: true, uniqueness: true

	has_and_belongs_to_many :posts
	belongs_to :user
end
