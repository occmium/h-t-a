module Types
  class FriendType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :nickname, String, null: false
    field :birthday, String, null: false
  end
end
