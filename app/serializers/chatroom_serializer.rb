class ChatroomSerializer < ActiveModel::Serializer
  attributes :id,:topic
  # has_one :user do
  #   object.user.name
  # end
  # has_many :messages
end
