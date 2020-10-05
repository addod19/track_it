class WaterLevelsController < ApplicationController
  skip_before_action :authorize_request, only: :authenticate
  
  def progress
    water = Water.order_water_data
    byebug
    progress_data = Water.progress_calculation(water)
    render json: { progress: progress_data }
  end
end
