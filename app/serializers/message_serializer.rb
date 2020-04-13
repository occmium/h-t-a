class MessageSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id

  attribute :created_at do
    object.created_at.try(:strftime, "%d.%m.%Y в %H:%M")
  end

  attribute :name do 
    object.user.try(:name)
  end
end
