class ApiUserController < ApplicationController
  require 'will_paginate/array'
  before_action :set_api_user_service

  def index
    @users = @user_service.all.paginate(page: params[:page], per_page: 25)
    ## render :json => users.to_a
  end

  def set_api_user_service
    @user_service = ApiUser.new
  end
end
