class RoomsController < ApplicationController
  def index
    @rooms = Room.all

    render json: @rooms, root: "results", adapter: :json
  end
end

# debug block
# render json: {
# 	results: {
#     id: :id, 
#     topic: :topic_name
#   },
# 	meta: {
# 		total: pagy.total,
# 		pages: pagy.pages
#   }
# }
