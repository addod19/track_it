class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create

  # POST /signup
  # return authenticated token upon signup
  def create
    @user = User.create!(user_params)
    auth_token = AuthenticateUser.new(@user.email, @user.password).call
    response = { message: Message.account_created, auth_token: auth_token, user: @user }
    # debugger
    json_response(response, :created)
  end

  # def index
  #   @users = User.all
  #   render json: @users
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
