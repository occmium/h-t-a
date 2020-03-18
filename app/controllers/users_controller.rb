class UsersController < ApplicationController
  # before_action :authenticate_api_user!

  def index
    @users = User.order('created_at ASC')

    render json: @users
  end

  def show
  end
end
