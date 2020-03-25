module Types
  class FeedItemType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :text, String, null: false
    field :likes, String, null: false
    field :comments, [Types::CommentType], null: false
  end
end
