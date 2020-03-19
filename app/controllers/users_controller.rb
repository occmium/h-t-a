class UsersController < ApplicationController
  # before_action :authenticate_api_user!

  def index
    # @users = User.preload(:votes).order('created_at ASC')
    @users = User.order('created_at ASC')

    render json: @users
  end

  def show
    # debugger
    @user = User.first
    # @user.touch
    
    render json: @user
  end
end
