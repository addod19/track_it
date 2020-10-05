class WatersController < ApplicationController
  before_action :set_water, only: [:show, :updated, :destroy]

  def index
    water = Water.order_water_data
    render json :water
  end

  def create
    water = Water.create!(water_params)
    if water
      response = { message: Message.water_created }
      json_response(response, :created)
      # render json { status: :created, water: water}
    else
      # json_response(message: "Could not create data !!!")
      # render json { water.errors.full_messages, status: 401 }
      render json: { error: water.errors.full_messages }
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
