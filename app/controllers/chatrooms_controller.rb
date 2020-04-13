class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all

    render json: @chatrooms, root: "results", adapter: :json
  end
end
