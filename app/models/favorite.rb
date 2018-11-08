class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :micropost

  validates :user_id, presense: true
  validates :micropost_id, presense: true
end