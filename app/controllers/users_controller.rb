class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create

  # POST /signup
  # return authenticated token upon signup
  def create
    @user = User.create!(user_params)
    auth_token = AuthenticateUser.new(@user.email, @user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)

    # @user = User.new(user_params)
    # if @user.save
    #   render json: @user, status: :created
    # else
    #   render json: { errors: @user.errors.full_messages },
    #          status: :unprocessable_entity
    # end
  end

  # def index
  #   @users = User.all
  #   render json: @users
  # end

  # def show
  #   @user = User.find(params[:id])
  #   render json: @user
  # end

  

  private

  def user_params
    params.permit(
      :name,
      :email,
      :password
    )
  end
end
