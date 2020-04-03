class MessagesChannel < ApplicationCable::Channel
  def subscribed
    logger.info "Subscribed to MessagesChannel"
  
    # stream_from "some_channel"
  end

  def unsubscribed
    logger.info "Unsubscribed to MessagesChannel"
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    logger.info "RoomChannel, speak: #{data.inspect}"
  end
end
