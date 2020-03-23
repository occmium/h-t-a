class FeedItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :likes
  has_one :user
end
