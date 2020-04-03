class RoomChannel < ApplicationCable::Channel
  def subscribed
    logger.info "Subscribed to RoomChannel"
    # stream_from "some_channel"
  end

  def unsubscribed
    logger.info "Unsubscribed to RoomChannel"
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    logger.info "RoomChannel, speak: #{data.inspect}"
  end
end
