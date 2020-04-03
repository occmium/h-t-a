class RoomSerializer < ActiveModel::Serializer
  attributes :id, :token
  # has_one :user
end
