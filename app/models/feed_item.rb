class FeedItem < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  acts_as_votable

  def likes
    self.get_upvotes.count
  end
end
