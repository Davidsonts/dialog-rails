class ApplicationController < ActionController::Base
  def cities
    render json: CS.cities(params[:state], :br).to_json
  end
end
