class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	:recoverable, :rememberable, :trackable, :validatable

	validates :username, presence: :true
	validates :username, uniqueness: :true

	has_many :tweets

	has_many :relationships, foreign_key: 'follower_id', class_name: 'Relationship'
	has_many :followings, through: :relationships
end
