class WaterLevelsController < ApplicationController
  skip_before_action :authenticate_request

  def progress
    # water = Water.order_water_data
    water = Water.user_water(current_user)
    # byebug
    progress_data = Water.progress_calculation(water)
    render json: { progress: progress_data }
  end
end
