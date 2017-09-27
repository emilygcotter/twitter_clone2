class Relationship < ApplicationRecord
  belongs_to :user, foreign_key: 'follower_id', class_name: 'User'
  belongs_to :following, class_name: 'User', foreign_key: 'following_id'
end
