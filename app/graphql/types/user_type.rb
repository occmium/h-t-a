module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :nickname, String, null: false
    field :citizenship, String, null: false
    field :birthday, String, null: false
    field :last_name, String, null: false
    field :friends, [Types::UserType], null: false
    field :feed_items, [Types::FeedItemType], null: false
  end

  def friends
    object.friends
  end
end
