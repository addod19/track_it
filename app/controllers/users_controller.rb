class UsersController < ApplicationController
  skip_before_action :authenticate_request

  # POST /signup
  # return authenticated token upon signup
  def create
    @user = User.create!(user_params)
    if @user.valid?
      auth_token = AuthenticateUser.new(@user.email, @user.password).call
      render json: { user: {
        name: @user.name,
        email: @user.email
      }, auth_token: auth_token }
    else
      render json: { error: @user.errors.full_messages }, status: :unauthorized
    end
  end

  private

  def user_params
    params.permit(
      :name,
      :email,
      :password
    )
  end
end
