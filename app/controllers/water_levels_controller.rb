class WaterLevelsController < ApplicationController
  before_action :logged_in_user
  
  def progress
    water = Water.user_water(logged_in_user.id).order(:created_at, :desc)
    progress_data = Water.progress_calculation(water)
    render json: { water_level_progress: progress_data }
  end
end
