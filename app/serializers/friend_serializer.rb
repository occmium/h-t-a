class FriendSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :nickname,
             :birthday

end
