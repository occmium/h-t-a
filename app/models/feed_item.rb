class FeedItem < ApplicationRecord
  belongs_to :user
  acts_as_votable

  def likes
    self.get_upvotes.count
  end
end
