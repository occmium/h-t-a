module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :message, String, null: false
    field :likes, String, null: false
  end
end
