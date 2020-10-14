class WaterLevelsController < ApplicationController
  skip_before_action :authenticate_request
  
  def progress
    water = Water.order_water_data
    progress_data = Water.progress_calculation(water)
    debugger
    render json: { progress: progress_data }
  end
end
