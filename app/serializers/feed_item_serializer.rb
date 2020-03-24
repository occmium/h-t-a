class FeedItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :likes, :comments
  has_one :user

  def comments
    customized_comments = []

    object.comments.each do |comment|
      custom_comment = comment.slice('id', 'message')
      custom_comment["likes"] = comment.likes
      customized_comments.push(custom_comment)
    end
    
    customized_comments
  end
end
