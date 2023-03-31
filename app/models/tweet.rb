class Tweet < ApplicationRecord
  validates :content, presence: true
  validates :tweet,   presence: true

  has_many   :retweets
  belongs_to :user
end
