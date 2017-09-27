class Tweet < ApplicationRecord

	validates :content, presence: :true
	validates :content, length: {maximum: 140, too_long: "A tweet can only be 140 characters or less!"}

	belongs_to :user
	has_many :tweet_tags, dependent: :destroy
	has_many :tags, through: :tweet_tags
end
