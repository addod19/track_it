class WatersController < ApplicationController
  before_action :authenticate_request
  before_action :set_water, only: [:show, :updated, :destroy]

  def index
    water = Water.order_water_data
    render json :water
  end

  def create
    water = @current_user.waters.build(amount: params[:amount], total: params[:total])
    if water.save
      response = { message: Message.water_created }
      render json: water
    else
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

  def set_water
    @set_water ||= Water.find(params[:id])
  end
end
