class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  validates :user_id, presense: true
  validates :tweet_id, presense: true
end