class WatersController < ApplicationController
  # skip_before_action :authorize_request, only: :authenticate
  before_action :set_water, only: [:show, :updated, :destroy]

  def index
    water = Water.order_water_data
    render json :water
  end

  def create
    water = Water.create!(water_params)
    if water
      render json { status: :created, water: water}
    else
      render json { water.errors.full_messages, status: 401 }
    end
  end

  def show
    if @set_water
      render json: @set_water
    else
      render json: @set_water.errors.full_messages, status: 401
    end
  end

  def update
    if @set_water.update(water_params)
      render json: { status: :created, water: @set_water }
    else
      render json: @set_water.errors.full_messages, status: 401
    end
  end

  def destroy
    if @set_water && @set_water.destroy
      render json: { message: "Water record deleted successfully", status: 201 }
    else
      render json: { messages: "Water record could not be deleted", status: 401 }
    end
  end


  private

  def water_params
    params.permit(:amount, :total, :user_id)
  end

  def set_water
    @set_water ||= Water.find(params[:id])
  end
end
