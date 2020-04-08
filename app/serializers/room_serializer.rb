class RoomSerializer < ActiveModel::Serializer
  attributes :id,:topic
  # has_one :user do
  #   object.user.name
  # end
end
