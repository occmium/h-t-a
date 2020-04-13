class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chatroom_#{params[:room]}"
    @chatroom = Chatroom.find(params[:room])
    @chatroom.messages.order(created_at: :asc).each do |message|
      message_as_json = MessageSerializer.new(message).as_json
      ActionCable.server.broadcast("chatroom_#{params[:room]}", message_as_json)
    end
  end

  def unsubscribed
  end

  def speak(data)
    new_message = Message.create! text: data['message'], chatroom: @chatroom, user: current_api_user
    message_as_json = MessageSerializer.new(new_message).as_json
    ActionCable.server.broadcast("chatroom_#{params[:room]}", message_as_json)
  end
end
