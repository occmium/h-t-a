class UserSerializer < ActiveModel::Serializer
  attributes :id, 
             :name, 
             :nickname, 
             :citizenship, 
             :birthday, 
             :last_name

  has_many :friends, serializer: FriendSerializer
  has_many :feed_items, serializer: FeedItemSerializer
end
