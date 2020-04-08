module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_api_user
    
    def connect
      self.current_api_user = find_verified_user request.params[:uid]
      logger.add_tags 'ActionCable', current_api_user.name
    end
    
    private

    def find_verified_user uid
      User.find_by(uid: uid) || reject_unauthorized_connection
    end
  end
end
