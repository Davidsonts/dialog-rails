class ApiUserController < ApplicationController
  before_action :set_api_user_service
  def index
    @users = @user_service.all
    ## render :json => users.to_a
  end

  def set_api_user_service
    @user_service = ApiUser.new
  end
end
