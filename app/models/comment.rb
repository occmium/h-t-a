class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :feed_item

  acts_as_votable

  def likes
    self.get_upvotes.count
  end
end
