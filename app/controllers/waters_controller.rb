class WatersController < ApplicationController
  before_action :logged_in_user
  before_action :set_water, only: [:show, :updated, :destroy]

  def index
    water = Water.user_water(logged_in_user).order(created_at: :desc)
    render json :water
  end

  def create
    water = logged_in_user.water.create!(water_params)
    if water
      render json { status: :created, water: water}
    else
      render json { water.errors.full_messages }
    end
  end

  def show
    if @set_water
      render json: @set_water
    else
      render json: @set_water.errors.full_messages
    end
  end

  def update
    if @set_water.update(water_params)
      render json: { status: :created, water: @set_water }
    else
      render json: @set_water.errors.full_messages
    end
  end

  def destroy
    if @set_water && @set_water.destroy
      render json: { message: "Water record deleted successfully "}
    else
      render json: { messages: "Water record could not be deleted "}
    end
  end

  def water_level_progress
    water = Water.user_water(logged_in_user.id).order(:created_at, :desc)
    progress_data = Water.progress_calculation(water)
    render json: { water_level_progress: progress_data }
  end


  private

  def water_params
    params.permit(:amount, :total, :user_id)
  end

  def set_water
    @set_water ||= Water.find(params[:id])
  end
end
